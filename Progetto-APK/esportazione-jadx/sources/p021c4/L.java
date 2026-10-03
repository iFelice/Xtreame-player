package p021c4;

import Q3.b;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.C2578i4;
import com.google.android.gms.internal.measurement.G4;
import com.google.android.gms.internal.measurement.H4;
import com.google.android.gms.internal.measurement.U1;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class L extends B {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public String f10938I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f10939J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f10940K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f10941L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f10942M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f10943N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final long f10944O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final long f10945P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public List f10946Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f10947R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f10948S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f10949T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f10950U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public String f10951V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public long f10952W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f10953X;

    public L(C0597l0 c0597l0, long j8, long j9) {
        super(c0597l0);
        this.f10952W = 0L;
        this.f10953X = null;
        this.f10944O = j8;
        this.f10945P = j9;
    }

    @Override // p021c4.B
    public final boolean p() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0240  */
    /* JADX WARN: Code duplicated, block: B:103:0x0241 A[Catch: NotFoundException -> 0x0246, TRY_LEAVE, TryCatch #0 {NotFoundException -> 0x0246, blocks: (B:100:0x022c, B:103:0x0241), top: B:125:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:109:0x025a  */
    /* JADX WARN: Code duplicated, block: B:111:0x0260  */
    /* JADX WARN: Code duplicated, block: B:112:0x026d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0277  */
    /* JADX WARN: Code duplicated, block: B:118:0x028b A[EDGE_INSN: B:118:0x028b->B:119:0x028d BREAK  A[LOOP:0: B:113:0x0271->B:139:?]] */
    /* JADX WARN: Code duplicated, block: B:120:0x028f  */
    /* JADX WARN: Code duplicated, block: B:122:0x0298  */
    /* JADX WARN: Code duplicated, block: B:125:0x022c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x01b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x028b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:30:0x00db  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:40:0x0100 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x0102  */
    /* JADX WARN: Code duplicated, block: B:43:0x0105  */
    /* JADX WARN: Code duplicated, block: B:45:0x0108  */
    /* JADX WARN: Code duplicated, block: B:47:0x010b  */
    /* JADX WARN: Code duplicated, block: B:49:0x010e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0112  */
    /* JADX WARN: Code duplicated, block: B:52:0x0127  */
    /* JADX WARN: Code duplicated, block: B:53:0x0132  */
    /* JADX WARN: Code duplicated, block: B:54:0x013d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0148  */
    /* JADX WARN: Code duplicated, block: B:56:0x0153  */
    /* JADX WARN: Code duplicated, block: B:57:0x015e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0169  */
    /* JADX WARN: Code duplicated, block: B:61:0x0179  */
    /* JADX WARN: Code duplicated, block: B:64:0x0189  */
    /* JADX WARN: Code duplicated, block: B:65:0x018a  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:73:0x01a6 A[Catch: IllegalStateException -> 0x01be, TryCatch #1 {IllegalStateException -> 0x01be, blocks: (B:62:0x017f, B:66:0x018b, B:68:0x0195, B:70:0x019b, B:74:0x01aa, B:77:0x01b5, B:80:0x01bb, B:73:0x01a6, B:84:0x01c2, B:86:0x01d3, B:88:0x01d8, B:87:0x01d6), top: B:127:0x017f }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:84:0x01c2 A[Catch: IllegalStateException -> 0x01be, TryCatch #1 {IllegalStateException -> 0x01be, blocks: (B:62:0x017f, B:66:0x018b, B:68:0x0195, B:70:0x019b, B:74:0x01aa, B:77:0x01b5, B:80:0x01bb, B:73:0x01a6, B:84:0x01c2, B:86:0x01d3, B:88:0x01d8, B:87:0x01d6), top: B:127:0x017f }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01d3 A[Catch: IllegalStateException -> 0x01be, TryCatch #1 {IllegalStateException -> 0x01be, blocks: (B:62:0x017f, B:66:0x018b, B:68:0x0195, B:70:0x019b, B:74:0x01aa, B:77:0x01b5, B:80:0x01bb, B:73:0x01a6, B:84:0x01c2, B:86:0x01d3, B:88:0x01d8, B:87:0x01d6), top: B:127:0x017f }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01d6 A[Catch: IllegalStateException -> 0x01be, TryCatch #1 {IllegalStateException -> 0x01be, blocks: (B:62:0x017f, B:66:0x018b, B:68:0x0195, B:70:0x019b, B:74:0x01aa, B:77:0x01b5, B:80:0x01bb, B:73:0x01a6, B:84:0x01c2, B:86:0x01d3, B:88:0x01d8, B:87:0x01d6), top: B:127:0x017f }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0209  */
    /* JADX WARN: Code duplicated, block: B:95:0x021b  */
    /* JADX WARN: Code duplicated, block: B:98:0x0222  */
    public final void q() {
        String str;
        String string;
        C0597l0 c0597l0;
        C0584h c0584h;
        Context context;
        D d6;
        List listAsList;
        boolean z7;
        C0597l0 c0597l1;
        int iL;
        String strK;
        T t7;
        C0597l0 c0597l2;
        C0584h c0584h2;
        Bundle bundleX;
        Integer numValueOf;
        String[] stringArray;
        Iterator it;
        String str2;
        I1 i8;
        String strB1;
        String str3;
        Resources resources;
        int identifier;
        String string2;
        C0597l0 c0597l3;
        String str4;
        C0597l0 c0597l4 = (C0597l0) this.f10616G;
        T t8 = c0597l4.f11258O;
        C0597l0.k(t8);
        t8.f11047T.c(Long.valueOf(this.f10945P), Long.valueOf(this.f10944O), "sdkVersion bundled with app, dynamiteVersion");
        Context context2 = c0597l4.f11250G;
        String packageName = context2.getPackageName();
        PackageManager packageManager = context2.getPackageManager();
        String str5 = "Unknown";
        int i9 = Integer.MIN_VALUE;
        String str6 = HttpUrl.FRAGMENT_ENCODE_SET;
        String installerPackageName = zzbz.UNKNOWN_CONTENT_TYPE;
        try {
            if (packageManager != null) {
                try {
                    installerPackageName = packageManager.getInstallerPackageName(packageName);
                } catch (IllegalArgumentException unused) {
                    T t9 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11039L.b(T.t(packageName), "Error retrieving app installer package name. appId");
                }
                if (installerPackageName == null) {
                    installerPackageName = "manual_install";
                } else if ("com.android.vending".equals(installerPackageName)) {
                    installerPackageName = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(((C0597l0) this.f10616G).f11250G.getPackageName(), 0);
                    if (packageInfo != null) {
                        CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                        string = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                        try {
                            str5 = packageInfo.versionName;
                            i9 = packageInfo.versionCode;
                        } catch (PackageManager.NameNotFoundException unused2) {
                            str = str5;
                            str5 = string;
                            T t10 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t10);
                            t10.f11039L.c(T.t(packageName), str5, "Error retrieving package info. appId, appName");
                            string = str5;
                            str5 = str;
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused3) {
                    str = "Unknown";
                }
                this.f10938I = packageName;
                this.f10941L = installerPackageName;
                this.f10939J = str5;
                this.f10940K = i9;
                this.f10942M = string;
                this.f10943N = 0L;
                c0597l0 = (C0597l0) this.f10616G;
                c0584h = c0597l0.f11256M;
                context = c0597l0.f11250G;
                d6 = E.f10814q1;
                listAsList = null;
                if (c0584h.B(null, d6)) {
                    z7 = false;
                } else {
                    c0597l3 = (C0597l0) this.f10616G;
                    if (TextUtils.isEmpty(c0597l3.s())) {
                        z7 = false;
                    } else {
                        if (c0597l3.f11256M.B(null, d6)) {
                            str4 = null;
                        } else {
                            str4 = c0597l3.f11252I;
                        }
                        if ("am".equals(str4)) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                    }
                }
                c0597l1 = (C0597l0) this.f10616G;
                iL = c0597l1.l();
                strK = c0597l1.f11268Y;
                t7 = c0597l0.f11258O;
                if (iL != 0) {
                    C0597l0.k(t7);
                    t7.f11047T.a("App measurement collection enabled");
                } else if (iL != 1) {
                    C0597l0.k(t7);
                    t7.f11045R.a("App measurement deactivated via the manifest");
                } else if (iL != 3) {
                    C0597l0.k(t7);
                    t7.f11045R.a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                } else if (iL != 4) {
                    C0597l0.k(t7);
                    t7.f11045R.a("App measurement disabled via the manifest");
                } else if (iL != 6) {
                    C0597l0.k(t7);
                    t7.f11044Q.a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                } else if (iL != 7) {
                    C0597l0.k(t7);
                    t7.f11045R.a("App measurement disabled via the global data collection setting");
                } else if (iL != 8) {
                    C0597l0.k(t7);
                    t7.f11045R.a("App measurement disabled");
                    C0597l0.k(t7);
                    t7.f11040M.a("Invalid scion state in identity");
                } else {
                    C0597l0.k(t7);
                    t7.f11045R.a("App measurement disabled due to denied storage consent");
                }
                this.f10949T = HttpUrl.FRAGMENT_ENCODE_SET;
                this.f10950U = HttpUrl.FRAGMENT_ENCODE_SET;
                if (z7) {
                    this.f10950U = c0597l1.s();
                }
                strB1 = Cw.b1(context, strK);
                if (TextUtils.isEmpty(strB1)) {
                    str6 = strB1;
                }
                this.f10949T = str6;
                if (!c0597l0.f11256M.B(null, d6) && !TextUtils.isEmpty(strB1)) {
                    resources = context.getResources();
                    if (!TextUtils.isEmpty(strK)) {
                        strK = Cw.K(context);
                    }
                    identifier = resources.getIdentifier("admob_app_id", "string", strK);
                    if (identifier == 0) {
                        string2 = null;
                    } else {
                        try {
                            string2 = resources.getString(identifier);
                        } catch (Resources.NotFoundException unused4) {
                            string2 = null;
                        }
                    }
                    this.f10950U = string2;
                }
                if (iL == 0) {
                    C0597l0.k(t7);
                    Q q7 = t7.f11047T;
                    String str7 = this.f10938I;
                    if (TextUtils.isEmpty(this.f10949T)) {
                        str3 = this.f10950U;
                    } else {
                        str3 = this.f10949T;
                    }
                    q7.c(str7, str3, "App measurement enabled for app package, google app id");
                }
                this.f10946Q = null;
                c0597l2 = (C0597l0) this.f10616G;
                c0597l2.getClass();
                c0584h2 = c0597l2.f11256M;
                c0584h2.getClass();
                c.e("analytics.safelisted_events");
                bundleX = c0584h2.x();
                if (bundleX == null) {
                    if (!bundleX.containsKey("analytics.safelisted_events")) {
                        numValueOf = Integer.valueOf(bundleX.getInt("analytics.safelisted_events"));
                    }
                    if (numValueOf != null) {
                        try {
                            stringArray = ((C0597l0) c0584h2.f10616G).f11250G.getResources().getStringArray(numValueOf.intValue());
                            if (stringArray == null) {
                                listAsList = Arrays.asList(stringArray);
                            }
                        } catch (Resources.NotFoundException e8) {
                            T t11 = ((C0597l0) c0584h2.f10616G).f11258O;
                            C0597l0.k(t11);
                            t11.f11039L.b(e8, "Failed to load string array from metadata: resource not found");
                        }
                    }
                    if (listAsList != null) {
                        this.f10946Q = listAsList;
                        break;
                    }
                    if (listAsList.isEmpty()) {
                        it = listAsList.iterator();
                        do {
                            if (it.hasNext()) {
                                this.f10946Q = listAsList;
                                break;
                            } else {
                                str2 = (String) it.next();
                                i8 = c0597l2.f11261R;
                                C0597l0.i(i8);
                            }
                        } while (i8.a0("safelisted event", str2));
                    } else {
                        T t12 = c0597l2.f11258O;
                        C0597l0.k(t12);
                        t12.f11044Q.a("Safelisted event list is empty. Ignoring");
                    }
                    if (packageManager != null) {
                        this.f10948S = b.p(c0597l2.f11250G) ? 1 : 0;
                    } else {
                        this.f10948S = 0;
                    }
                }
                T t13 = ((C0597l0) c0584h2.f10616G).f11258O;
                C0597l0.k(t13);
                t13.f11039L.a("Failed to load metadata: Metadata bundle is null");
                numValueOf = null;
                if (numValueOf != null) {
                    stringArray = ((C0597l0) c0584h2.f10616G).f11250G.getResources().getStringArray(numValueOf.intValue());
                    if (stringArray == null) {
                        listAsList = Arrays.asList(stringArray);
                    }
                }
                if (listAsList != null) {
                    this.f10946Q = listAsList;
                    break;
                }
                if (listAsList.isEmpty()) {
                    it = listAsList.iterator();
                    do {
                        if (it.hasNext()) {
                            this.f10946Q = listAsList;
                            break;
                        } else {
                            str2 = (String) it.next();
                            i8 = c0597l2.f11261R;
                            C0597l0.i(i8);
                        }
                    } while (i8.a0("safelisted event", str2));
                } else {
                    T t14 = c0597l2.f11258O;
                    C0597l0.k(t14);
                    t14.f11044Q.a("Safelisted event list is empty. Ignoring");
                }
                if (packageManager != null) {
                    this.f10948S = b.p(c0597l2.f11250G) ? 1 : 0;
                } else {
                    this.f10948S = 0;
                }
            }
            T t15 = c0597l4.f11258O;
            C0597l0.k(t15);
            t15.f11039L.b(T.t(packageName), "PackageManager is null, app identity information might be inaccurate. appId");
            strB1 = Cw.b1(context, strK);
            if (TextUtils.isEmpty(strB1)) {
                str6 = strB1;
            }
            this.f10949T = str6;
            if (!c0597l0.f11256M.B(null, d6)) {
                resources = context.getResources();
                if (!TextUtils.isEmpty(strK)) {
                    strK = Cw.K(context);
                }
                identifier = resources.getIdentifier("admob_app_id", "string", strK);
                if (identifier == 0) {
                    string2 = null;
                } else {
                    string2 = resources.getString(identifier);
                }
                this.f10950U = string2;
            }
            if (iL == 0) {
                C0597l0.k(t7);
                Q q8 = t7.f11047T;
                String str8 = this.f10938I;
                if (TextUtils.isEmpty(this.f10949T)) {
                    str3 = this.f10950U;
                } else {
                    str3 = this.f10949T;
                }
                q8.c(str8, str3, "App measurement enabled for app package, google app id");
            }
        } catch (IllegalStateException e9) {
            T t16 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t16);
            t16.f11039L.c(T.t(packageName), e9, "Fetching Google App Id failed with exception. appId");
        }
        string = "Unknown";
        this.f10938I = packageName;
        this.f10941L = installerPackageName;
        this.f10939J = str5;
        this.f10940K = i9;
        this.f10942M = string;
        this.f10943N = 0L;
        c0597l0 = (C0597l0) this.f10616G;
        c0584h = c0597l0.f11256M;
        context = c0597l0.f11250G;
        d6 = E.f10814q1;
        listAsList = null;
        if (c0584h.B(null, d6)) {
            c0597l3 = (C0597l0) this.f10616G;
            if (TextUtils.isEmpty(c0597l3.s())) {
                z7 = false;
            } else {
                if (c0597l3.f11256M.B(null, d6)) {
                    str4 = null;
                } else {
                    str4 = c0597l3.f11252I;
                }
                if ("am".equals(str4)) {
                    z7 = true;
                } else {
                    z7 = false;
                }
            }
        } else {
            z7 = false;
        }
        c0597l1 = (C0597l0) this.f10616G;
        iL = c0597l1.l();
        strK = c0597l1.f11268Y;
        t7 = c0597l0.f11258O;
        if (iL != 0) {
            C0597l0.k(t7);
            t7.f11047T.a("App measurement collection enabled");
        } else if (iL != 1) {
            C0597l0.k(t7);
            t7.f11045R.a("App measurement deactivated via the manifest");
        } else if (iL != 3) {
            C0597l0.k(t7);
            t7.f11045R.a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
        } else if (iL != 4) {
            C0597l0.k(t7);
            t7.f11045R.a("App measurement disabled via the manifest");
        } else if (iL != 6) {
            C0597l0.k(t7);
            t7.f11044Q.a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
        } else if (iL != 7) {
            C0597l0.k(t7);
            t7.f11045R.a("App measurement disabled via the global data collection setting");
        } else if (iL != 8) {
            C0597l0.k(t7);
            t7.f11045R.a("App measurement disabled");
            C0597l0.k(t7);
            t7.f11040M.a("Invalid scion state in identity");
        } else {
            C0597l0.k(t7);
            t7.f11045R.a("App measurement disabled due to denied storage consent");
        }
        this.f10949T = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f10950U = HttpUrl.FRAGMENT_ENCODE_SET;
        if (z7) {
            this.f10950U = c0597l1.s();
        }
        this.f10946Q = null;
        c0597l2 = (C0597l0) this.f10616G;
        c0597l2.getClass();
        c0584h2 = c0597l2.f11256M;
        c0584h2.getClass();
        c.e("analytics.safelisted_events");
        bundleX = c0584h2.x();
        if (bundleX == null) {
            if (!bundleX.containsKey("analytics.safelisted_events")) {
                numValueOf = Integer.valueOf(bundleX.getInt("analytics.safelisted_events"));
            }
            if (numValueOf != null) {
                stringArray = ((C0597l0) c0584h2.f10616G).f11250G.getResources().getStringArray(numValueOf.intValue());
                if (stringArray == null) {
                    listAsList = Arrays.asList(stringArray);
                }
            }
            if (listAsList != null) {
                this.f10946Q = listAsList;
                break;
            }
            if (listAsList.isEmpty()) {
                it = listAsList.iterator();
                do {
                    if (it.hasNext()) {
                        this.f10946Q = listAsList;
                        break;
                    } else {
                        str2 = (String) it.next();
                        i8 = c0597l2.f11261R;
                        C0597l0.i(i8);
                    }
                } while (i8.a0("safelisted event", str2));
            } else {
                T t17 = c0597l2.f11258O;
                C0597l0.k(t17);
                t17.f11044Q.a("Safelisted event list is empty. Ignoring");
            }
            if (packageManager != null) {
                this.f10948S = b.p(c0597l2.f11250G) ? 1 : 0;
            } else {
                this.f10948S = 0;
            }
        }
        T t18 = ((C0597l0) c0584h2.f10616G).f11258O;
        C0597l0.k(t18);
        t18.f11039L.a("Failed to load metadata: Metadata bundle is null");
        numValueOf = null;
        if (numValueOf != null) {
            stringArray = ((C0597l0) c0584h2.f10616G).f11250G.getResources().getStringArray(numValueOf.intValue());
            if (stringArray == null) {
                listAsList = Arrays.asList(stringArray);
            }
        }
        if (listAsList != null) {
            this.f10946Q = listAsList;
            break;
        }
        if (listAsList.isEmpty()) {
            it = listAsList.iterator();
            do {
                if (it.hasNext()) {
                    this.f10946Q = listAsList;
                    break;
                } else {
                    str2 = (String) it.next();
                    i8 = c0597l2.f11261R;
                    C0597l0.i(i8);
                }
            } while (i8.a0("safelisted event", str2));
        } else {
            T t19 = c0597l2.f11258O;
            C0597l0.k(t19);
            t19.f11044Q.a("Safelisted event list is empty. Ignoring");
        }
        if (packageManager != null) {
            this.f10948S = b.p(c0597l2.f11250G) ? 1 : 0;
        } else {
            this.f10948S = 0;
        }
    }

    public final J1 r(String str) {
        String str2;
        long j8;
        String str3;
        int i8;
        long j9;
        int extensionVersion;
        long jW0;
        int iL;
        long jX0;
        m();
        String strT = t();
        String strU = u();
        n();
        String str4 = this.f10939J;
        n();
        long j10 = this.f10940K;
        n();
        c.h(this.f10941L);
        String str5 = this.f10941L;
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        c0597l0.f11256M.u();
        n();
        m();
        long j11 = this.f10943N;
        if (j11 == 0) {
            I1 i9 = ((C0597l0) this.f10616G).f11261R;
            C0597l0.i(i9);
            Context context = c0597l0.f11250G;
            String packageName = context.getPackageName();
            i9.m();
            c.e(packageName);
            PackageManager packageManager = context.getPackageManager();
            MessageDigest messageDigestX = I1.x();
            if (messageDigestX == null) {
                T t7 = ((C0597l0) i9.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11039L.a("Could not get MD5 instance");
                j11 = -1;
            } else if (packageManager != null) {
                try {
                    if (i9.f0(context, packageName)) {
                        jX0 = 0;
                    } else {
                        U1 u1A = Q3.c.a(context);
                        C0597l0 c0597l1 = (C0597l0) i9.f10616G;
                        Signature[] signatureArr = u1A.c(64, c0597l1.f11250G.getPackageName()).signatures;
                        if (signatureArr == null || signatureArr.length <= 0) {
                            T t8 = c0597l1.f11258O;
                            C0597l0.k(t8);
                            t8.f11042O.a("Could not get signatures");
                            jX0 = -1;
                        } else {
                            jX0 = I1.x0(messageDigestX.digest(signatureArr[0].toByteArray()));
                        }
                    }
                    j11 = jX0;
                } catch (PackageManager.NameNotFoundException e8) {
                    T t9 = ((C0597l0) i9.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11039L.b(e8, "Package name not found");
                    j11 = 0;
                }
            } else {
                j11 = 0;
            }
            this.f10943N = j11;
        }
        long j12 = j11;
        C0597l0 c0597l2 = (C0597l0) this.f10616G;
        boolean zF = c0597l2.f();
        Z z7 = c0597l2.f11257N;
        C0597l0.i(z7);
        boolean z8 = !z7.f11102Y;
        m();
        if (c0597l2.f()) {
            ((H4) G4.f22925H.f22926G.f31450G).getClass();
            if (c0597l2.f11256M.B(null, E.f10727H0)) {
                T t10 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t10);
                t10.f11047T.a("Disabled IID for tests.");
            } else {
                try {
                    Class<?> clsLoadClass = c0597l2.f11250G.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                    if (clsLoadClass != null) {
                        try {
                            Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, ((C0597l0) this.f10616G).f11250G);
                            if (objInvoke != null) {
                                try {
                                    str2 = (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(objInvoke, new Object[0]);
                                } catch (Exception unused) {
                                    T t11 = ((C0597l0) this.f10616G).f11258O;
                                    C0597l0.k(t11);
                                    t11.f11044Q.a("Failed to retrieve Firebase Instance Id");
                                    str2 = null;
                                }
                            }
                        } catch (Exception unused2) {
                            T t12 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t12);
                            t12.f11043P.a("Failed to obtain Firebase Analytics instance");
                        }
                    }
                } catch (ClassNotFoundException unused3) {
                }
            }
            str2 = null;
        } else {
            str2 = null;
        }
        C0597l0 c0597l3 = (C0597l0) this.f10616G;
        Z z9 = c0597l3.f11257N;
        C0597l0.i(z9);
        long jA = z9.f11090M.a();
        long jMin = c0597l3.f11282m0;
        if (jA != 0) {
            jMin = Math.min(jMin, jA);
        }
        long j13 = jMin;
        n();
        int i10 = this.f10948S;
        C0597l0 c0597l4 = (C0597l0) this.f10616G;
        Boolean boolZ = c0597l4.f11256M.z("google_analytics_adid_collection_enabled");
        boolean z10 = boolZ == null || boolZ.booleanValue();
        Z z11 = c0597l4.f11257N;
        C0597l0.i(z11);
        z11.m();
        boolean z12 = z11.s().getBoolean("deferred_analytics_collection", false);
        String strS = s();
        C0584h c0584h = c0597l4.f11256M;
        String str6 = str2;
        Boolean boolValueOf = Boolean.valueOf(c0584h.y("google_analytics_default_allow_ad_personalization_signals", true) != EnumC0614u0.GRANTED);
        List list = this.f10946Q;
        String strJ = z11.u().j();
        String str7 = this.f10947R;
        I1 i11 = c0597l4.f11261R;
        if (str7 == null) {
            C0597l0.i(i11);
            this.f10947R = i11.u();
        }
        String str8 = this.f10947R;
        if (z11.u().k(EnumC0618w0.ANALYTICS_STORAGE)) {
            m();
            j8 = 0;
            if (this.f10952W != 0) {
                c0597l4.f11263T.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f10952W;
                if (this.f10951V != null && jCurrentTimeMillis > 86400000 && this.f10953X == null) {
                    w();
                }
            }
            if (this.f10951V == null) {
                w();
            }
            str3 = this.f10951V;
        } else {
            j8 = 0;
            str3 = null;
        }
        Boolean boolZ2 = c0584h.z("google_analytics_sgtm_upload_enabled");
        boolean zBooleanValue = boolZ2 == null ? false : boolZ2.booleanValue();
        C0597l0.i(i11);
        String strT2 = t();
        C0597l0 c0597l5 = (C0597l0) i11.f10616G;
        if (c0597l5.f11250G.getPackageManager() == null) {
            j9 = j8;
        } else {
            try {
                try {
                    ApplicationInfo applicationInfoB = Q3.c.a(c0597l5.f11250G).b(0, strT2);
                    i8 = applicationInfoB != null ? applicationInfoB.targetSdkVersion : 0;
                } catch (PackageManager.NameNotFoundException unused4) {
                    C0597l0 c0597l6 = (C0597l0) i11.f10616G;
                    c0597l6.getClass();
                    T t13 = c0597l6.f11258O;
                    C0597l0.k(t13);
                    t13.f11045R.b(strT2, "PackageManager failed to find running app: app_id");
                }
            } catch (PackageManager.NameNotFoundException unused5) {
            }
            j9 = i8;
        }
        C0597l0 c0597l7 = (C0597l0) this.f10616G;
        Z z13 = c0597l7.f11257N;
        C0597l0.i(z13);
        C0620x0 c0620x0U = z13.u();
        Z z14 = c0597l7.f11257N;
        C0597l0.i(z14);
        z14.m();
        String str9 = C0606q.b(z14.s().getString("dma_consent_settings", null)).f11335b;
        C2578i4.b();
        D d6 = E.f10759X0;
        C0584h c0584h2 = c0597l7.f11256M;
        boolean zB = c0584h2.B(null, d6);
        I1 i12 = c0597l7.f11261R;
        if (zB) {
            C0597l0.i(i12);
            i12.getClass();
            extensionVersion = (Build.VERSION.SDK_INT < 30 || SdkExtensions.getExtensionVersion(30) <= 3) ? 0 : SdkExtensions.getExtensionVersion(1000000);
        } else {
            extensionVersion = 0;
        }
        C2578i4.b();
        if (c0584h2.B(null, d6)) {
            C0597l0.i(i12);
            jW0 = i12.w0();
        } else {
            jW0 = j8;
        }
        String str10 = c0584h2.f11192I;
        String strValueOf = String.valueOf(C0620x0.a(c0584h2.y("google_analytics_default_allow_ad_personalization_signals", true)));
        long j14 = ((C0597l0) this.f10616G).f11282m0;
        if (c0584h2.B(null, E.f10749S0)) {
            C0597l0 c0597l8 = (C0597l0) this.f10616G;
            C0597l0.h(c0597l8.f11273d0);
            iL = AbstractC2090uc.l(c0597l8.f11273d0.r());
        } else {
            iL = 0;
        }
        return new J1(strT, strU, str4, j10, str5, 119002L, j12, str, zF, z8, str6, j13, i10, z10, z12, strS, boolValueOf, this.f10944O, list, (String) null, strJ, str8, str3, zBooleanValue, j9, c0620x0U.f11405b, str9, extensionVersion, jW0, str10, strValueOf, j14, iL);
    }

    public final String s() {
        n();
        if (((C0597l0) this.f10616G).f11256M.B(null, E.f10814q1)) {
            return null;
        }
        return this.f10950U;
    }

    public final String t() {
        n();
        c.h(this.f10938I);
        return this.f10938I;
    }

    public final String u() {
        m();
        n();
        c.h(this.f10949T);
        return this.f10949T;
    }

    public final void w() {
        String str;
        m();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        Z z7 = c0597l0.f11257N;
        C0597l0.i(z7);
        boolean zK = z7.u().k(EnumC0618w0.ANALYTICS_STORAGE);
        T t7 = c0597l0.f11258O;
        if (zK) {
            byte[] bArr = new byte[16];
            I1 i8 = c0597l0.f11261R;
            C0597l0.i(i8);
            i8.y().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            C0597l0.k(t7);
            t7.f11046S.a("Analytics Storage consent is not granted");
            str = null;
        }
        C0597l0.k(t7);
        t7.f11046S.a("Resetting session stitching token to ".concat(str == null ? "null" : "not null"));
        this.f10951V = str;
        c0597l0.f11263T.getClass();
        this.f10952W = System.currentTimeMillis();
    }
}
