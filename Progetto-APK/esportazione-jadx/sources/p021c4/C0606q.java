package p021c4;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Objects;

/* JADX INFO: renamed from: c4.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0606q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C0606q f11333f = new C0606q(100, (String) null, (Boolean) null, (Boolean) null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f11334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f11336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f11337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EnumMap f11338e;

    public C0606q(int i8, String str, Boolean bool, Boolean bool2) {
        EnumMap enumMap = new EnumMap(EnumC0618w0.class);
        this.f11338e = enumMap;
        enumMap.put(EnumC0618w0.AD_USER_DATA, bool == null ? EnumC0614u0.UNINITIALIZED : bool.booleanValue() ? EnumC0614u0.GRANTED : EnumC0614u0.DENIED);
        this.f11334a = i8;
        this.f11335b = e();
        this.f11336c = bool2;
        this.f11337d = str;
    }

    public static C0606q a(int i8, Bundle bundle) {
        if (bundle == null) {
            return new C0606q(i8, (String) null, (Boolean) null, (Boolean) null);
        }
        EnumMap enumMap = new EnumMap(EnumC0618w0.class);
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.DMA.f11388G) {
            enumMap.put(enumC0618w0, C0620x0.b(bundle.getString(enumC0618w0.f11399G)));
        }
        return new C0606q(enumMap, i8, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    public static C0606q b(String str) {
        if (str == null || str.length() <= 0) {
            return f11333f;
        }
        String[] strArrSplit = str.split(":");
        int i8 = Integer.parseInt(strArrSplit[0]);
        EnumMap enumMap = new EnumMap(EnumC0618w0.class);
        EnumC0618w0[] enumC0618w0Arr = EnumC0616v0.DMA.f11388G;
        int length = enumC0618w0Arr.length;
        int i9 = 1;
        int i10 = 0;
        while (i10 < length) {
            enumMap.put(enumC0618w0Arr[i10], C0620x0.c(strArrSplit[i9].charAt(0)));
            i10++;
            i9++;
        }
        return new C0606q(enumMap, i8, (Boolean) null, (String) null);
    }

    public static Boolean d(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        int iOrdinal = C0620x0.b(bundle.getString("ad_personalization")).ordinal();
        if (iOrdinal == 2) {
            return Boolean.FALSE;
        }
        if (iOrdinal != 3) {
            return null;
        }
        return Boolean.TRUE;
    }

    public final EnumC0614u0 c() {
        EnumC0614u0 enumC0614u0 = (EnumC0614u0) this.f11338e.get(EnumC0618w0.AD_USER_DATA);
        return enumC0614u0 == null ? EnumC0614u0.UNINITIALIZED : enumC0614u0;
    }

    public final String e() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11334a);
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.DMA.f11388G) {
            sb.append(":");
            sb.append(C0620x0.a((EnumC0614u0) this.f11338e.get(enumC0618w0)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0606q)) {
            return false;
        }
        C0606q c0606q = (C0606q) obj;
        if (this.f11335b.equalsIgnoreCase(c0606q.f11335b) && Objects.equals(this.f11336c, c0606q.f11336c)) {
            return Objects.equals(this.f11337d, c0606q.f11337d);
        }
        return false;
    }

    public final int hashCode() {
        int i8;
        Boolean bool = this.f11336c;
        if (bool == null) {
            i8 = 3;
        } else {
            i8 = true != bool.booleanValue() ? 13 : 7;
        }
        String str = this.f11337d;
        return ((str == null ? 17 : str.hashCode()) * 137) + this.f11335b.hashCode() + (i8 * 29);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(C0620x0.h(this.f11334a));
        for (EnumC0618w0 enumC0618w0 : EnumC0616v0.DMA.f11388G) {
            sb.append(",");
            sb.append(enumC0618w0.f11399G);
            sb.append("=");
            EnumC0614u0 enumC0614u0 = (EnumC0614u0) this.f11338e.get(enumC0618w0);
            if (enumC0614u0 == null) {
                sb.append("uninitialized");
            } else {
                int iOrdinal = enumC0614u0.ordinal();
                if (iOrdinal == 0) {
                    sb.append("uninitialized");
                } else if (iOrdinal == 1) {
                    sb.append("eu_consent_policy");
                } else if (iOrdinal == 2) {
                    sb.append("denied");
                } else if (iOrdinal == 3) {
                    sb.append("granted");
                }
            }
        }
        Boolean bool = this.f11336c;
        if (bool != null) {
            sb.append(",isDmaRegion=");
            sb.append(bool);
        }
        String str = this.f11337d;
        if (str != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(str);
        }
        return sb.toString();
    }

    public C0606q(EnumMap enumMap, int i8, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(EnumC0618w0.class);
        this.f11338e = enumMap2;
        enumMap2.putAll(enumMap);
        this.f11334a = i8;
        this.f11335b = e();
        this.f11336c = bool;
        this.f11337d = str;
    }
}
