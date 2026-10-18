package p027d2;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f24628b = n.f("Data");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e f24629c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f24630a;

    static {
        e eVar = new e(new HashMap());
        c(eVar);
        f24629c = eVar;
    }

    public e(e eVar) {
        this.f24630a = new HashMap(eVar.f24630a);
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static e a(byte[] bArr) throws Throwable {
        ObjectInputStream objectInputStream;
        Throwable e8;
        String str = f24628b;
        if (bArr.length > 10240) {
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }
        HashMap map = new HashMap();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        for (int i8 = objectInputStream.readInt(); i8 > 0; i8--) {
                            map.put(objectInputStream.readUTF(), objectInputStream.readObject());
                        }
                        try {
                            objectInputStream.close();
                        } catch (IOException e9) {
                            Log.e(str, "Error in Data#fromByteArray: ", e9);
                        }
                        byteArrayInputStream.close();
                    } catch (IOException e10) {
                        e8 = e10;
                        Log.e(str, "Error in Data#fromByteArray: ", e8);
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e11) {
                                Log.e(str, "Error in Data#fromByteArray: ", e11);
                            }
                        }
                        byteArrayInputStream.close();
                    } catch (ClassNotFoundException e12) {
                        e8 = e12;
                        Log.e(str, "Error in Data#fromByteArray: ", e8);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        byteArrayInputStream.close();
                    }
                } catch (IOException e13) {
                    e = e13;
                    Throwable th = e;
                    objectInputStream = null;
                    e8 = th;
                    Log.e(str, "Error in Data#fromByteArray: ", e8);
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    byteArrayInputStream.close();
                    return new e(map);
                } catch (ClassNotFoundException e14) {
                    e = e14;
                    Throwable th2 = e;
                    objectInputStream = null;
                    e8 = th2;
                    Log.e(str, "Error in Data#fromByteArray: ", e8);
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    byteArrayInputStream.close();
                    return new e(map);
                } catch (Throwable th3) {
                    th = th3;
                    if (0 != 0) {
                        try {
                            objectInputStream2.close();
                        } catch (IOException e15) {
                            Log.e(str, "Error in Data#fromByteArray: ", e15);
                        }
                    }
                    try {
                        byteArrayInputStream.close();
                        throw th;
                    } catch (IOException e16) {
                        Log.e(str, "Error in Data#fromByteArray: ", e16);
                        throw th;
                    }
                }
            } catch (IOException e17) {
                Log.e(str, "Error in Data#fromByteArray: ", e17);
            }
            return new e(map);
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static byte[] c(e eVar) throws Throwable {
        String str = f24628b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeInt(eVar.f24630a.size());
                    for (Map.Entry entry : eVar.f24630a.entrySet()) {
                        objectOutputStream2.writeUTF((String) entry.getKey());
                        objectOutputStream2.writeObject(entry.getValue());
                    }
                    try {
                        objectOutputStream2.close();
                    } catch (IOException e8) {
                        Log.e(str, "Error in Data#toByteArray: ", e8);
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e9) {
                        Log.e(str, "Error in Data#toByteArray: ", e9);
                    }
                    if (byteArrayOutputStream.size() <= 10240) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                } catch (IOException e10) {
                    e = e10;
                    objectOutputStream = objectOutputStream2;
                    Log.e(str, "Error in Data#toByteArray: ", e);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e11) {
                            Log.e(str, "Error in Data#toByteArray: ", e11);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e12) {
                        Log.e(str, "Error in Data#toByteArray: ", e12);
                    }
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e13) {
                            Log.e(str, "Error in Data#toByteArray: ", e13);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (IOException e14) {
                        Log.e(str, "Error in Data#toByteArray: ", e14);
                        throw th;
                    }
                }
            } catch (IOException e15) {
                e = e15;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final String b(String str) {
        Object obj = this.f24630a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        HashMap map = this.f24630a;
        Set<String> setKeySet = map.keySet();
        HashMap map2 = ((e) obj).f24630a;
        if (!setKeySet.equals(map2.keySet())) {
            return false;
        }
        for (String str : setKeySet) {
            Object obj2 = map.get(str);
            Object obj3 = map2.get(str);
            if (obj2 == null || obj3 == null) {
                if (obj2 != obj3) {
                    return false;
                }
            } else {
                if (!(((obj2 instanceof Object[]) && (obj3 instanceof Object[])) ? Arrays.deepEquals((Object[]) obj2, (Object[]) obj3) : obj2.equals(obj3))) {
                    return false;
                }
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f24630a.hashCode() * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        HashMap map = this.f24630a;
        if (!map.isEmpty()) {
            for (String str : map.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = map.get(str);
                if (obj instanceof Object[]) {
                    sb.append(Arrays.toString((Object[]) obj));
                } else {
                    sb.append(obj);
                }
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public e(Map map) {
        this.f24630a = new HashMap(map);
    }
}
