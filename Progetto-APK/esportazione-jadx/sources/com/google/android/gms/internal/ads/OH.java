package com.google.android.gms.internal.ads;

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
public abstract class OH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f15150a;

    static {
        char[] cArr = new char[80];
        f15150a = cArr;
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
            VG vg = XG.f17401H;
            sb.append(Cw.L(new VG(((String) obj).getBytes(AbstractC2288yH.f22010a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof XG) {
            sb.append(": \"");
            sb.append(Cw.L((XG) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC1873qH) {
            sb.append(" {");
            c((AbstractC1873qH) obj, sb, i8 + 2);
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
            sb.append(f15150a, 0, i9);
            i8 -= i9;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0200  */
    public static void c(NH nh, StringBuilder sb, int i8) {
        int i9;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = nh.getClass().getDeclaredMethods();
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
                a(sb, i8, strSubstring.substring(0, strSubstring.length() - 4), AbstractC1873qH.j(nh, method2, new Object[0]));
            } else if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                a(sb, i8, strSubstring.substring(0, strSubstring.length() - 3), AbstractC1873qH.j(nh, method, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objJ = AbstractC1873qH.j(nh, method4, new Object[0]);
                    if (method5 == null) {
                        if (objJ instanceof Boolean) {
                            if (((Boolean) objJ).booleanValue()) {
                                a(sb, i8, strSubstring, objJ);
                            }
                        } else if (objJ instanceof Integer) {
                            if (((Integer) objJ).intValue() != 0) {
                                a(sb, i8, strSubstring, objJ);
                            }
                        } else if (objJ instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objJ).floatValue()) != 0) {
                                a(sb, i8, strSubstring, objJ);
                            }
                        } else if (!(objJ instanceof Double)) {
                            if (objJ instanceof String) {
                                zEquals = objJ.equals(HttpUrl.FRAGMENT_ENCODE_SET);
                            } else if (objJ instanceof XG) {
                                zEquals = objJ.equals(XG.f17401H);
                            } else if (objJ instanceof NH) {
                                if (objJ != ((AbstractC1873qH) ((AbstractC1873qH) ((NH) objJ)).x(6, null))) {
                                    a(sb, i8, strSubstring, objJ);
                                }
                            } else if (!(objJ instanceof Enum) || ((Enum) objJ).ordinal() != 0) {
                                a(sb, i8, strSubstring, objJ);
                            }
                            if (!zEquals) {
                                a(sb, i8, strSubstring, objJ);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objJ).doubleValue()) != 0) {
                            a(sb, i8, strSubstring, objJ);
                        }
                    } else if (((Boolean) AbstractC1873qH.j(nh, method5, new Object[0])).booleanValue()) {
                        a(sb, i8, strSubstring, objJ);
                    }
                }
            }
            i9 = 3;
        }
        C1408hI c1408hI = ((AbstractC1873qH) nh).zzt;
        if (c1408hI != null) {
            for (int i11 = 0; i11 < c1408hI.f19079a; i11++) {
                a(sb, i8, String.valueOf(c1408hI.f19080b[i11] >>> 3), c1408hI.f19081c[i11]);
            }
        }
    }
}
