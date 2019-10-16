package com.lanou.util;

import javax.tools.*;
import java.io.*;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;

public class CompilerUtils {


    private static WeakReference<CompilerUtils> mWeakReference = new WeakReference<>(new CompilerUtils());

    public  Object eval(String method, String codes) {
        CompilerUtils eval = mWeakReference.get();
        //将运行结果存储至文件中
        String ret = "";

        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(stream, true);
        //定位输出到文件中
        System.setOut(printStream);
        eval.run(method, codes);
        //重新定位输出
        try {
            stream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.setOut(System.out);
        ret = new String(stream.toByteArray());
        return ret;
    }


    private Object run(String method, String codes) {

        String className = "com.test.Main";
        StringBuilder sb = new StringBuilder();
        sb.append("package com.test;");
        sb.append(codes);


        Class<?> clazz = compile(className, sb.toString());
        try {
            // 生成对象
            Object obj = clazz.newInstance();
            Class<? extends Object> cls = obj.getClass();
            // 调用sayHello方法
            Method m = clazz.getMethod(method, String[].class);
            Object invoke = m.invoke(obj, new Object[]{new String[]{}});
            return invoke;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }


    /**
     * 装载字符串成为java可执行文件
     *
     * @param className className
     * @param javaCodes javaCodes
     * @return Class
     */
    private Class<?> compile(String className, String javaCodes) {
        JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();
        StandardJavaFileManager fileManager = compiler.getStandardFileManager(null, null, null);
        StrSrcJavaObject srcObject = new StrSrcJavaObject(className, javaCodes);
        Iterable<? extends JavaFileObject> fileObjects = Arrays.asList(srcObject);
        String flag = "-d";
        String outDir = "";
        try {
            File classPath = new File(Thread.currentThread().getContextClassLoader().getResource("").toURI());
            outDir = classPath.getAbsolutePath() + File.separator;
        } catch (URISyntaxException e1) {
            e1.printStackTrace();
        }
        Iterable<String> options = Arrays.asList(flag, outDir);
        JavaCompiler.CompilationTask task = compiler.getTask(null, fileManager, null, options, null, fileObjects);
        boolean result = task.call();
        if (result == true) {
            try {
                return Class.forName(className);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return null;
    }


    private static class StrSrcJavaObject extends SimpleJavaFileObject {
        private String content;

        StrSrcJavaObject(String name, String content) {
            super(URI.create("string:///" + name.replace('.', '/') + Kind.SOURCE.extension), Kind.SOURCE);
            this.content = content;
        }

        public CharSequence getCharContent(boolean ignoreEncodingErrors) {
            return content;
        }
    }


}
