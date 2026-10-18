package p021c4;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: c4.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0620x0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0620x0 f11403c = new C0620x0(100);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnumMap f11404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11405b;

    public C0620x0(int i8) {
        EnumMap enumMap = new EnumMap(EnumC0618w0.class);
        this.f11404a = enumMap;
        EnumC0618w0 enumC0618w0 = EnumC0618w0.AD_STORAGE;
        EnumC0614u0 enumC0614u0 = EnumC0614u0.UNINITIALIZED;
        enumMap.put(enumC0618w0, enumC0614u0);
        enumMap.put(EnumC0618w0.ANALYTICS_STORAGE, enumC0614u0);
        this.f11405b = i8;
    }

    public static char a(EnumC0614u0 enumC0614u0) {
        if (enumC0614u0 == null) {
            return '-';
        }
        int iOrdinal = enumC0614u0.ordinal();
        if (iOrdinal == 1) {
            return '+';
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? '-' : '1';
        }
        return '0';
    }

    public static EnumC0614u0 b(String str) {
        EnumC0614u0 enumC0614u0 = EnumC0614u0.UNINITIALIZED;
        if (str == null) {
            return enumC0614u0;
        }
        if (str.equals("granted")) {
            return EnumC0614u0.GRANTED;
        }
        return str.equals("denied") ? EnumC0614u0.DENIED : enumC0614u0;
    }

    public static EnumC0614u0 c(char c8) {
        if (c8 == '+') {
            return EnumC0614u0.POLICY;
        }
        if (c8 != '0') {
            return c8 != '1' ? EnumC0614u0.UNINITIALIZED : EnumC0614u0.GRANTED;
        }
        return EnumC0614u0.DENIED;
    }

    public static C0620x0 d(int i8, Bundle bundle) {
        if (bundle == null) {
            return new C0620x0(i8);
        }
        EnumMap enumMap = new EnumMap(EnumC0618w0.class);
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.STORAGE.f11388G) {
            enumMap.put(enumC0618w0, b(bundle.getString(enumC0618w0.f11399G)));
        }
        return new C0620x0(enumMap, i8);
    }

    public static C0620x0 e(int i8, String str) {
        EnumMap enumMap = new EnumMap(EnumC0618w0.class);
        EnumC0616v0 enumC0616v0 = EnumC0616v0.STORAGE;
        int i9 = 0;
        while (true) {
            EnumC0618w0[] enumC0618w0Arr = enumC0616v0.f11388G;
            if (i9 >= enumC0618w0Arr.length) {
                return new C0620x0(enumMap, i8);
            }
            String str2 = str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str;
            EnumC0618w0 enumC0618w0 = enumC0618w0Arr[i9];
            int i10 = i9 + 2;
            if (i10 < str2.length()) {
                enumMap.put(enumC0618w0, c(str2.charAt(i10)));
            } else {
                enumMap.put(enumC0618w0, EnumC0614u0.UNINITIALIZED);
            }
            i9++;
        }
    }

    public static String h(int i8) {
        if (i8 == -30) {
            return "TCF";
        }
        if (i8 == -20) {
            return "API";
        }
        if (i8 == -10) {
            return "MANIFEST";
        }
        if (i8 == 0) {
            return "1P_API";
        }
        if (i8 == 30) {
            return "1P_INIT";
        }
        if (i8 != 90) {
            return i8 != 100 ? "OTHER" : "UNKNOWN";
        }
        return "REMOTE_CONFIG";
    }

    public static boolean l(int i8, int i9) {
        int i10 = -30;
        if (i8 == -20) {
            if (i9 == -30) {
                return true;
            }
            i8 = -20;
        }
        if (i8 != -30) {
            i10 = i8;
        } else if (i9 == -20) {
            return true;
        }
        return i10 == i9 || i8 < i9;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0620x0)) {
            return false;
        }
        C0620x0 c0620x0 = (C0620x0) obj;
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.STORAGE.f11388G) {
            if (this.f11404a.get(enumC0618w0) != c0620x0.f11404a.get(enumC0618w0)) {
                return false;
            }
        }
        return this.f11405b == c0620x0.f11405b;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    public final C0620x0 f(C0620x0 c0620x0) {
        EnumMap enumMap = new EnumMap(EnumC0618w0.class);
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.STORAGE.f11388G) {
            EnumC0614u0 enumC0614u0 = (EnumC0614u0) this.f11404a.get(enumC0618w0);
            EnumC0614u0 enumC0614u1 = (EnumC0614u0) c0620x0.f11404a.get(enumC0618w0);
            if (enumC0614u0 == null) {
                enumC0614u0 = enumC0614u1;
            } else if (enumC0614u1 != null) {
                EnumC0614u0 enumC0614u2 = EnumC0614u0.UNINITIALIZED;
                if (enumC0614u0 == enumC0614u2) {
                    enumC0614u0 = enumC0614u1;
                } else if (enumC0614u1 != enumC0614u2) {
                    EnumC0614u0 enumC0614u3 = EnumC0614u0.POLICY;
                    if (enumC0614u0 == enumC0614u3) {
                        enumC0614u0 = enumC0614u1;
                    } else if (enumC0614u1 != enumC0614u3) {
                        EnumC0614u0 enumC0614u4 = EnumC0614u0.DENIED;
                        enumC0614u0 = (enumC0614u0 == enumC0614u4 || enumC0614u1 == enumC0614u4) ? enumC0614u4 : EnumC0614u0.GRANTED;
                    }
                }
            }
            if (enumC0614u0 != null) {
                enumMap.put(enumC0618w0, enumC0614u0);
            }
        }
        return new C0620x0(enumMap, 100);
    }

    public final C0620x0 g(C0620x0 c0620x0) {
        EnumMap enumMap = new EnumMap(EnumC0618w0.class);
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.STORAGE.f11388G) {
            EnumC0614u0 enumC0614u0 = (EnumC0614u0) this.f11404a.get(enumC0618w0);
            if (enumC0614u0 == EnumC0614u0.UNINITIALIZED) {
                enumC0614u0 = (EnumC0614u0) c0620x0.f11404a.get(enumC0618w0);
            }
            if (enumC0614u0 != null) {
                enumMap.put(enumC0618w0, enumC0614u0);
            }
        }
        return new C0620x0(enumMap, this.f11405b);
    }

    public final int hashCode() {
        Iterator it = this.f11404a.values().iterator();
        int iHashCode = this.f11405b * 17;
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + ((EnumC0614u0) it.next()).hashCode();
        }
        return iHashCode;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0030  */
    public final String i() {
        int iOrdinal;
        StringBuilder sb = new StringBuilder("G1");
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.STORAGE.f11388G) {
            EnumC0614u0 enumC0614u0 = (EnumC0614u0) this.f11404a.get(enumC0618w0);
            char c8 = '-';
            if (enumC0614u0 != null && (iOrdinal = enumC0614u0.ordinal()) != 0) {
                if (iOrdinal == 1) {
                    c8 = '1';
                } else if (iOrdinal == 2) {
                    c8 = '0';
                } else if (iOrdinal == 3) {
                    c8 = '1';
                }
            }
            sb.append(c8);
        }
        return sb.toString();
    }

    public final String j() {
        StringBuilder sb = new StringBuilder("G1");
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.STORAGE.f11388G) {
            sb.append(a((EnumC0614u0) this.f11404a.get(enumC0618w0)));
        }
        return sb.toString();
    }

    public final boolean k(EnumC0618w0 enumC0618w0) {
        return ((EnumC0614u0) this.f11404a.get(enumC0618w0)) != EnumC0614u0.DENIED;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(h(this.f11405b));
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.STORAGE.f11388G) {
            sb.append(",");
            sb.append(enumC0618w0.f11399G);
            sb.append("=");
            EnumC0614u0 enumC0614u0 = (EnumC0614u0) this.f11404a.get(enumC0618w0);
            if (enumC0614u0 == null) {
                enumC0614u0 = EnumC0614u0.UNINITIALIZED;
            }
            sb.append(enumC0614u0);
        }
        return sb.toString();
    }

    public C0620x0(EnumMap enumMap, int i8) {
        EnumMap enumMap2 = new EnumMap(EnumC0618w0.class);
        this.f11404a = enumMap2;
        enumMap2.putAll(enumMap);
        this.f11405b = i8;
    }
}
