package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public abstract class D2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f22439a;

    static {
        char[] cArr = new char[80];
        f22439a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void a(StringBuilder sb, int i8, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb, i8, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb, i8, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        b(i8, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i9 = 1; i9 < str.length(); i9++) {
                char cCharAt = str.charAt(i9);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(Cw.N(new C2425a2(((String) obj).getBytes(AbstractC2481o2.f22763a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof Z1) {
            sb.append(": \"");
            sb.append(Cw.N((Z1) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC2457i2) {
            sb.append(" {");
            c((AbstractC2457i2) obj, sb, i8 + 2);
            sb.append("\n");
            b(i8, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i10 = i8 + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        a(sb, i10, "key", entry.getKey());
        a(sb, i10, "value", entry.getValue());
        sb.append("\n");
        b(i8, sb);
        sb.append("}");
    }

    public static void b(int i8, StringBuilder sb) {
        while (i8 > 0) {
            int i9 = 80;
            if (i8 <= 80) {
                i9 = i8;
            }
            sb.append(f22439a, 0, i9);
            i8 -= i9;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0200  */
    public static void c(U1 u7, StringBuilder sb, int i8) {
        int i9;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = u7.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i10 = 0;
        while (true) {
            i9 = 3;
            if (i10 >= length) {
                break;
            }
            Method method3 = declaredMethods[i10];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        map.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i10++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i9);
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                a(sb, i8, strSubstring.substring(0, strSubstring.length() - 4), AbstractC2457i2.c(u7, method2, new Object[0]));
            } else if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                a(sb, i8, strSubstring.substring(0, strSubstring.length() - 3), AbstractC2457i2.c(u7, method, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objC = AbstractC2457i2.c(u7, method4, new Object[0]);
                    if (method5 == null) {
                        if (objC instanceof Boolean) {
                            if (((Boolean) objC).booleanValue()) {
                                a(sb, i8, strSubstring, objC);
                            }
                        } else if (objC instanceof Integer) {
                            if (((Integer) objC).intValue() != 0) {
                                a(sb, i8, strSubstring, objC);
                            }
                        } else if (objC instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objC).floatValue()) != 0) {
                                a(sb, i8, strSubstring, objC);
                            }
                        } else if (!(objC instanceof Double)) {
                            if (objC instanceof String) {
                                zEquals = objC.equals(HttpUrl.FRAGMENT_ENCODE_SET);
                            } else if (objC instanceof Z1) {
                                zEquals = objC.equals(Z1.f22595H);
                            } else if (objC instanceof U1) {
                                if (objC != ((AbstractC2457i2) ((AbstractC2457i2) ((U1) objC)).h(6, null))) {
                                    a(sb, i8, strSubstring, objC);
                                }
                            } else if (!(objC instanceof Enum) || ((Enum) objC).ordinal() != 0) {
                                a(sb, i8, strSubstring, objC);
                            }
                            if (!zEquals) {
                                a(sb, i8, strSubstring, objC);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objC).doubleValue()) != 0) {
                            a(sb, i8, strSubstring, objC);
                        }
                    } else if (((Boolean) AbstractC2457i2.c(u7, method5, new Object[0])).booleanValue()) {
                        a(sb, i8, strSubstring, objC);
                    }
                }
            }
            i9 = 3;
        }
    }
}
