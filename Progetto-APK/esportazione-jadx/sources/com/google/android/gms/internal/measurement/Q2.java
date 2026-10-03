package com.google.android.gms.internal.measurement;

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
public abstract class Q2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f22985a;

    static {
        char[] cArr = new char[80];
        f22985a = cArr;
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
            C2582j2 c2582j2 = AbstractC2576i2.f23165H;
            sb.append(Cw.O(new C2582j2(((String) obj).getBytes(AbstractC2666z2.f23416a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC2576i2) {
            sb.append(": \"");
            sb.append(Cw.O((AbstractC2576i2) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC2631s2) {
            sb.append(" {");
            c((AbstractC2631s2) obj, sb, i8 + 2);
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
            sb.append(f22985a, 0, i9);
            i8 -= i9;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01ff  */
    public static void c(P2 p7, StringBuilder sb, int i8) {
        int i9;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = p7.getClass().getDeclaredMethods();
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
                a(sb, i8, strSubstring.substring(0, strSubstring.length() - 4), AbstractC2631s2.i(p7, method2, new Object[0]));
            } else if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                a(sb, i8, strSubstring.substring(0, strSubstring.length() - 3), AbstractC2631s2.i(p7, method, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objI = AbstractC2631s2.i(p7, method4, new Object[0]);
                    if (method5 == null) {
                        if (objI instanceof Boolean) {
                            if (((Boolean) objI).booleanValue()) {
                                a(sb, i8, strSubstring, objI);
                            }
                        } else if (objI instanceof Integer) {
                            if (((Integer) objI).intValue() != 0) {
                                a(sb, i8, strSubstring, objI);
                            }
                        } else if (objI instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objI).floatValue()) != 0) {
                                a(sb, i8, strSubstring, objI);
                            }
                        } else if (!(objI instanceof Double)) {
                            if (objI instanceof String) {
                                zEquals = objI.equals(HttpUrl.FRAGMENT_ENCODE_SET);
                            } else if (objI instanceof AbstractC2576i2) {
                                zEquals = objI.equals(AbstractC2576i2.f23165H);
                            } else if (objI instanceof P2) {
                                if (objI != ((AbstractC2631s2) ((AbstractC2631s2) ((P2) objI)).p(6))) {
                                    a(sb, i8, strSubstring, objI);
                                }
                            } else if (!(objI instanceof Enum) || ((Enum) objI).ordinal() != 0) {
                                a(sb, i8, strSubstring, objI);
                            }
                            if (!zEquals) {
                                a(sb, i8, strSubstring, objI);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objI).doubleValue()) != 0) {
                            a(sb, i8, strSubstring, objI);
                        }
                    } else if (((Boolean) AbstractC2631s2.i(p7, method5, new Object[0])).booleanValue()) {
                        a(sb, i8, strSubstring, objI);
                    }
                }
            }
            i9 = 3;
        }
        C2535b3 c2535b3 = ((AbstractC2631s2) p7).zzc;
        if (c2535b3 != null) {
            for (int i11 = 0; i11 < c2535b3.f23100a; i11++) {
                a(sb, i8, String.valueOf(c2535b3.f23101b[i11] >>> 3), c2535b3.f23102c[i11]);
            }
        }
    }
}
