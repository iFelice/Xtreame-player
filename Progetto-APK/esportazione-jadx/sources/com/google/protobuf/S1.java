package com.google.protobuf;

import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public abstract class S1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f24301a;

    static {
        char[] cArr = new char[80];
        f24301a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void a(int i8, StringBuilder sb) {
        while (i8 > 0) {
            int i9 = 80;
            if (i8 <= 80) {
                i9 = i8;
            }
            sb.append(f24301a, 0, i9);
            i8 -= i9;
        }
    }

    public static void b(StringBuilder sb, int i8, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb, i8, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb, i8, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        a(i8, sb);
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
            sb.append(AbstractC2907i.R(r.l((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof r) {
            sb.append(": \"");
            sb.append(AbstractC2907i.R((r) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC2909i1) {
            sb.append(" {");
            c((AbstractC2909i1) obj, sb, i8 + 2);
            sb.append("\n");
            a(i8, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i10 = i8 + 2;
        b(sb, i10, "key", entry.getKey());
        b(sb, i10, "value", entry.getValue());
        sb.append("\n");
        a(i8, sb);
        sb.append("}");
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:105:0x0206  */
    /* JADX WARN: Code duplicated, block: B:130:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0161  */
    /* JADX WARN: Code duplicated, block: B:65:0x0173  */
    /* JADX WARN: Code duplicated, block: B:67:0x017b  */
    /* JADX WARN: Code duplicated, block: B:69:0x017f  */
    /* JADX WARN: Code duplicated, block: B:70:0x0189  */
    /* JADX WARN: Code duplicated, block: B:72:0x018d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0198  */
    /* JADX WARN: Code duplicated, block: B:77:0x019c  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:82:0x01af  */
    /* JADX WARN: Code duplicated, block: B:85:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:88:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01da  */
    /* JADX WARN: Code duplicated, block: B:95:0x01de  */
    /* JADX WARN: Code duplicated, block: B:98:0x01e9  */
    public static void c(Q1 q7, StringBuilder sb, int i8) {
        int i9;
        java.lang.reflect.Method method;
        java.lang.reflect.Method method2;
        Object objInvokeOrDie;
        boolean zEquals;
        java.lang.reflect.Method method3;
        java.lang.reflect.Method method4;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        java.lang.reflect.Method[] declaredMethods = q7.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i10 = 0;
        while (true) {
            i9 = 3;
            if (i10 >= length) {
                break;
            }
            java.lang.reflect.Method method5 = declaredMethods[i10];
            if (!Modifier.isStatic(method5.getModifiers()) && method5.getName().length() >= 3) {
                if (method5.getName().startsWith("set")) {
                    hashSet.add(method5.getName());
                } else if (Modifier.isPublic(method5.getModifiers()) && method5.getParameterTypes().length == 0) {
                    if (method5.getName().startsWith("has")) {
                        map.put(method5.getName(), method5);
                    } else if (method5.getName().startsWith("get")) {
                        treeMap.put(method5.getName(), method5);
                    }
                }
            }
            i10++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i9);
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List") && (method4 = (java.lang.reflect.Method) entry.getValue()) != null && method4.getReturnType().equals(List.class)) {
                b(sb, i8, strSubstring.substring(0, strSubstring.length() - 4), AbstractC2909i1.invokeOrDie(method4, q7, new Object[0]));
            } else if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method3 = (java.lang.reflect.Method) entry.getValue()) != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                b(sb, i8, strSubstring.substring(0, strSubstring.length() - 3), AbstractC2909i1.invokeOrDie(method3, q7, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring))) {
                if (strSubstring.endsWith("Bytes")) {
                    if (!treeMap.containsKey("get" + strSubstring.substring(0, strSubstring.length() - 5))) {
                        method = (java.lang.reflect.Method) entry.getValue();
                        method2 = (java.lang.reflect.Method) map.get("has".concat(strSubstring));
                        if (method != null) {
                            objInvokeOrDie = AbstractC2909i1.invokeOrDie(method, q7, new Object[0]);
                            if (method2 == null) {
                                if (objInvokeOrDie instanceof Boolean) {
                                    zEquals = !((Boolean) objInvokeOrDie).booleanValue();
                                } else if (objInvokeOrDie instanceof Integer) {
                                    if (((Integer) objInvokeOrDie).intValue() == 0) {
                                        b(sb, i8, strSubstring, objInvokeOrDie);
                                    }
                                } else if (objInvokeOrDie instanceof Float) {
                                    if (Float.floatToRawIntBits(((Float) objInvokeOrDie).floatValue()) == 0) {
                                        b(sb, i8, strSubstring, objInvokeOrDie);
                                    }
                                } else if (objInvokeOrDie instanceof Double) {
                                    if (Double.doubleToRawLongBits(((Double) objInvokeOrDie).doubleValue()) == 0) {
                                        b(sb, i8, strSubstring, objInvokeOrDie);
                                    }
                                } else if (objInvokeOrDie instanceof String) {
                                    zEquals = objInvokeOrDie.equals(HttpUrl.FRAGMENT_ENCODE_SET);
                                } else if (objInvokeOrDie instanceof r) {
                                    zEquals = objInvokeOrDie.equals(r.f24491H);
                                } else if (objInvokeOrDie instanceof Q1) {
                                    if (objInvokeOrDie == ((Q1) objInvokeOrDie).getDefaultInstanceForType()) {
                                        b(sb, i8, strSubstring, objInvokeOrDie);
                                    }
                                } else if ((objInvokeOrDie instanceof java.lang.Enum) || ((java.lang.Enum) objInvokeOrDie).ordinal() != 0) {
                                    b(sb, i8, strSubstring, objInvokeOrDie);
                                }
                                if (!zEquals) {
                                    b(sb, i8, strSubstring, objInvokeOrDie);
                                }
                            } else if (((Boolean) AbstractC2909i1.invokeOrDie(method2, q7, new Object[0])).booleanValue()) {
                                b(sb, i8, strSubstring, objInvokeOrDie);
                            }
                        }
                    }
                } else {
                    method = (java.lang.reflect.Method) entry.getValue();
                    method2 = (java.lang.reflect.Method) map.get("has".concat(strSubstring));
                    if (method != null) {
                        objInvokeOrDie = AbstractC2909i1.invokeOrDie(method, q7, new Object[0]);
                        if (method2 == null) {
                            if (objInvokeOrDie instanceof Boolean) {
                                zEquals = !((Boolean) objInvokeOrDie).booleanValue();
                            } else if (objInvokeOrDie instanceof Integer) {
                                if (((Integer) objInvokeOrDie).intValue() == 0) {
                                    b(sb, i8, strSubstring, objInvokeOrDie);
                                }
                            } else if (objInvokeOrDie instanceof Float) {
                                if (Float.floatToRawIntBits(((Float) objInvokeOrDie).floatValue()) == 0) {
                                    b(sb, i8, strSubstring, objInvokeOrDie);
                                }
                            } else if (objInvokeOrDie instanceof Double) {
                                if (Double.doubleToRawLongBits(((Double) objInvokeOrDie).doubleValue()) == 0) {
                                    b(sb, i8, strSubstring, objInvokeOrDie);
                                }
                            } else if (objInvokeOrDie instanceof String) {
                                zEquals = objInvokeOrDie.equals(HttpUrl.FRAGMENT_ENCODE_SET);
                            } else if (objInvokeOrDie instanceof r) {
                                zEquals = objInvokeOrDie.equals(r.f24491H);
                            } else if (objInvokeOrDie instanceof Q1) {
                                if (objInvokeOrDie == ((Q1) objInvokeOrDie).getDefaultInstanceForType()) {
                                    b(sb, i8, strSubstring, objInvokeOrDie);
                                }
                            } else if (objInvokeOrDie instanceof java.lang.Enum) {
                                b(sb, i8, strSubstring, objInvokeOrDie);
                            } else {
                                b(sb, i8, strSubstring, objInvokeOrDie);
                            }
                            if (!zEquals) {
                                b(sb, i8, strSubstring, objInvokeOrDie);
                            }
                        } else if (((Boolean) AbstractC2909i1.invokeOrDie(method2, q7, new Object[0])).booleanValue()) {
                            b(sb, i8, strSubstring, objInvokeOrDie);
                        }
                    }
                }
            }
            i9 = 3;
        }
        if (q7 instanceof GeneratedMessageLite$ExtendableMessage) {
            Iterator itL = ((GeneratedMessageLite$ExtendableMessage) q7).extensions.l();
            while (itL.hasNext()) {
                Map.Entry entry2 = (Map.Entry) itL.next();
                b(sb, i8, p000a.r.h(new StringBuilder("["), ((C2897f1) entry2.getKey()).f24426H, "]"), entry2.getValue());
            }
        }
        A2 a8 = ((AbstractC2909i1) q7).unknownFields;
        if (a8 != null) {
            for (int i11 = 0; i11 < a8.f24235a; i11++) {
                b(sb, i8, String.valueOf(a8.f24236b[i11] >>> 3), a8.f24237c[i11]);
            }
        }
    }
}
