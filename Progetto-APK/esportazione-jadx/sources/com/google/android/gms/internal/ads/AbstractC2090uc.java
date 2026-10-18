package com.google.android.gms.internal.ads;

import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import com.google.android.gms.internal.cast.C2429b2;
import com.google.android.gms.internal.measurement.C2588k2;
import com.google.android.gms.internal.measurement.InterfaceC2661y2;
import com.google.android.gms.internal.pal.C2835v;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2090uc {
    public static int A(int i8, int i9, int i10) {
        return C2835v.I0(i8) + i9 + i10;
    }

    public static /* synthetic */ String B(int i8) {
        switch (i8) {
            case 1:
                return "CLIENT_UPLOAD_ELIGIBILITY_UNKNOWN";
            case 2:
                return "CLIENT_UPLOAD_ELIGIBLE";
            case 3:
                return "MEASUREMENT_SERVICE_NOT_ENABLED";
            case 4:
                return "ANDROID_TOO_OLD";
            case 5:
                return "NON_PLAY_MODE";
            case 6:
                return "SDK_TOO_OLD";
            case 7:
                return "MISSING_JOB_SCHEDULER";
            case 8:
                return "NOT_ENABLED_IN_MANIFEST";
            case 9:
                return "CLIENT_FLAG_OFF";
            case 10:
                return "SERVICE_FLAG_OFF";
            case 11:
                return "PINNED_TO_SERVICE_UPLOAD";
            case 12:
                return "MISSING_SGTM_SERVER_URL";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String C(int i8) {
        switch (i8) {
            case 1:
                return "UNKNOWN_KEYMATERIAL";
            case 2:
                return "SYMMETRIC";
            case 3:
                return "ASYMMETRIC_PRIVATE";
            case 4:
                return "ASYMMETRIC_PUBLIC";
            case 5:
                return "REMOTE";
            case 6:
                return "UNRECOGNIZED";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String D(int i8) {
        if (i8 == 1) {
            return "HTML_DISPLAY";
        }
        if (i8 != 2) {
            return i8 != 3 ? "null" : "VIDEO";
        }
        return "NATIVE_DISPLAY";
    }

    public static final int a(int i8) {
        if (i8 != 11) {
            return k(i8);
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static final int b(int i8) {
        if (i8 != 6) {
            return h(i8);
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static int c(int i8) {
        switch (i8) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            default:
                switch (i8) {
                    case 20:
                        return 10;
                    case 21:
                        return 11;
                    case 22:
                        return 12;
                    default:
                        return 0;
                }
        }
    }

    public static /* synthetic */ String d(int i8) {
        switch (i8) {
            case 1:
                return "api-call";
            case 2:
                return "dynamite-enter";
            case 3:
                return "client-signals-start";
            case 4:
                return "client-signals-end";
            case 5:
                return "service-connected";
            case 6:
                return "gms-signals-start";
            case 7:
                return "gms-signals-end";
            case 8:
                return "get-signals-sdkcore-start";
            case 9:
                return "get-signals-sdkcore-end";
            case 10:
                return "get-ad-dictionary-sdkcore-start";
            case 11:
                return "get-ad-dictionary-sdkcore-end";
            case 12:
                return "http-response-ready";
            case 13:
                return "normalize-ad-response-start";
            case 14:
                return "normalize-ad-response-end";
            case 15:
                return "binder-call-start";
            case 16:
                return "server-response-parse-start";
            case 17:
                return "rendering-start";
            case 18:
                return "public-api-callback";
            case 19:
                return "rendering-webview-creation-start";
            case 20:
                return "rendering-webview-creation-end";
            case 21:
                return "rendering-ad-component-creation-end";
            case 22:
                return "rendering-configure-webview-start";
            case 23:
                return "rendering-configure-webview-end";
            case 24:
                return "rendering-webview-load-html-start";
            case 25:
                return "rendering-webview-load-html-end";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String e(int i8) {
        if (i8 == 1) {
            return "htmlDisplay";
        }
        if (i8 == 2) {
            return "nativeDisplay";
        }
        if (i8 == 3) {
            return "video";
        }
        throw null;
    }

    public static /* synthetic */ String f(int i8) {
        if (i8 == 1) {
            return "ctv";
        }
        if (i8 == 2) {
            return "mobile";
        }
        if (i8 == 3) {
            return "other";
        }
        throw null;
    }

    public static /* synthetic */ String g(int i8) {
        if (i8 == 1) {
            return "beginToRender";
        }
        if (i8 == 2) {
            return "definedByJavascript";
        }
        if (i8 == 3) {
            return "onePixel";
        }
        if (i8 == 4) {
            return "unspecified";
        }
        throw null;
    }

    public static /* synthetic */ int h(int i8) {
        switch (i8) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return -1;
            default:
                throw null;
        }
    }

    public static /* synthetic */ String i(int i8) {
        switch (i8) {
            case 1:
                return "watson";
            case 2:
                return "launcher_x";
            case 3:
                return "custom";
            case 4:
                return "leanback";
            case 5:
                return "fire_tv";
            case 6:
                return zzbz.UNKNOWN_CONTENT_TYPE;
            default:
                throw null;
        }
    }

    public static /* synthetic */ int j(int i8) {
        switch (i8) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return -1;
            default:
                throw null;
        }
    }

    public static /* synthetic */ int k(int i8) {
        switch (i8) {
            case 1:
                return 0;
            case 2:
                return -1;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
                return 3;
            case 6:
                return 4;
            case 7:
                return 5;
            case 8:
                return 6;
            case 9:
                return 7;
            case 10:
                return 8;
            case 11:
                return -1;
            default:
                throw null;
        }
    }

    public static /* synthetic */ int l(int i8) {
        switch (i8) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            case 8:
                return 7;
            case 9:
                return 8;
            case 10:
                return 20;
            case 11:
                return 21;
            case 12:
                return 22;
            default:
                throw null;
        }
    }

    public static int m(int i8, int i9, int i10) {
        return AbstractC1407hH.M(i8) + i9 + i10;
    }

    public static int n(int i8, int i9, int i10, int i11) {
        return com.google.android.gms.internal.atv_ads_framework.L.Z(i8) + i9 + i10 + i11;
    }

    public static MJ o(MJ mj, int i8) {
        return HJ.b(new C0778Ii(mj, i8));
    }

    public static MJ p(MJ mj, int i8, int i9) {
        return HJ.b(new C0778Ii(mj, i8, i9));
    }

    public static MJ q(MJ mj, int i8, Object obj) {
        return HJ.b(new C1064al(mj, i8, obj));
    }

    public static MJ r(MJ mj, MJ mj2, int i8) {
        return HJ.b(new C0788Jd(mj, mj2, i8));
    }

    public static /* synthetic */ void t(InterfaceC2236xH interfaceC2236xH) {
        if (interfaceC2236xH != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void u(InterfaceC2661y2 interfaceC2661y2) {
        if (interfaceC2661y2 != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void v(com.google.android.gms.internal.pal.I i8) {
        if (i8 != null) {
            throw new ClassCastException();
        }
    }

    public static int w(int i8, int i9, int i10) {
        return com.google.android.gms.internal.atv_ads_framework.L.Z(i8) + i9 + i10;
    }

    public static int x(int i8, int i9, int i10, int i11) {
        return C2835v.I0(i8) + i9 + i10 + i11;
    }

    public static int y(int i8, int i9, int i10) {
        return C2429b2.w0(i8) + i9 + i10;
    }

    public static int z(int i8, int i9, int i10) {
        return C2588k2.G(i8) + i9 + i10;
    }
}
