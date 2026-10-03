package p021c4;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bumptech.glide.c;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Objects;
import okhttp3.HttpUrl;
import p000a.r;
import p075j3.a;
import p075j3.b;

/* JADX INFO: loaded from: classes.dex */
public final class F0 extends AbstractC0604p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f10837e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ K0 f10838f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ F0(K0 k8, C0597l0 c0597l0, int i8) {
        super(c0597l0);
        this.f10837e = i8;
        this.f10838f = k8;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0128  */
    /* JADX WARN: Code duplicated, block: B:54:0x0142  */
    /* JADX WARN: Code duplicated, block: B:56:0x0157  */
    /* JADX WARN: Code duplicated, block: B:62:0x0177  */
    /* JADX WARN: Code duplicated, block: B:63:0x017a  */
    /* JADX WARN: Code duplicated, block: B:65:0x017d  */
    /* JADX WARN: Code duplicated, block: B:68:0x0188  */
    /* JADX WARN: Code duplicated, block: B:71:0x0195  */
    /* JADX WARN: Code duplicated, block: B:72:0x0198  */
    /* JADX WARN: Code duplicated, block: B:75:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:76:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:78:0x01e5  */
    @Override // p021c4.AbstractC0604p
    public final void b() {
        Pair pair;
        NetworkInfo activeNetworkInfo;
        C0574d1 c0574d1R;
        G g8;
        C0590j c0590jY0;
        Bundle bundle;
        String str;
        int i8;
        String str2;
        URL url;
        int i9 = this.f10837e;
        int i10 = 1;
        K0 k8 = this.f10838f;
        switch (i9) {
            case 0:
                K0 k9 = ((C0597l0) k8.f10616G).f11265V;
                C0597l0.j(k9);
                new Thread(new E0(k9, i10)).start();
                break;
            case 1:
                k8.B();
                break;
            case 2:
                k8.w();
                break;
            default:
                C0597l0 c0597l0 = (C0597l0) k8.f10616G;
                C0591j0 c0591j0 = c0597l0.f11259P;
                C0597l0.k(c0591j0);
                c0591j0.m();
                N0 n7 = c0597l0.f11267X;
                C0597l0.k(n7);
                C0597l0.k(n7);
                String strT = c0597l0.n().t();
                Boolean boolZ = c0597l0.f11256M.z("google_analytics_adid_collection_enabled");
                boolean z7 = boolZ == null || boolZ.booleanValue();
                T t7 = c0597l0.f11258O;
                if (!z7) {
                    C0597l0.k(t7);
                    t7.f11047T.a("ADID collection is disabled from Manifest. Skipping");
                } else {
                    Z z8 = c0597l0.f11257N;
                    C0597l0.i(z8);
                    z8.m();
                    if (z8.u().k(EnumC0618w0.AD_STORAGE)) {
                        C0597l0 c0597l1 = (C0597l0) z8.f10616G;
                        c0597l1.f11263T.getClass();
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        String str3 = z8.f11092O;
                        if (str3 == null || jElapsedRealtime >= z8.f11094Q) {
                            z8.f11094Q = c0597l1.f11256M.w(strT, E.f10767b) + jElapsedRealtime;
                            try {
                                a aVarA = b.a(c0597l1.f11250G);
                                z8.f11092O = HttpUrl.FRAGMENT_ENCODE_SET;
                                String str4 = aVarA.f25695a;
                                if (str4 != null) {
                                    z8.f11092O = str4;
                                }
                                z8.f11093P = aVarA.f25696b;
                            } catch (Exception e8) {
                                T t8 = ((C0597l0) z8.f10616G).f11258O;
                                C0597l0.k(t8);
                                t8.f11046S.b(e8, "Unable to get advertising id");
                                z8.f11092O = HttpUrl.FRAGMENT_ENCODE_SET;
                            }
                            pair = new Pair(z8.f11092O, Boolean.valueOf(z8.f11093P));
                        } else {
                            pair = new Pair(str3, Boolean.valueOf(z8.f11093P));
                        }
                    } else {
                        pair = new Pair(HttpUrl.FRAGMENT_ENCODE_SET, Boolean.FALSE);
                    }
                    Pair pair2 = pair;
                    if (((Boolean) pair2.second).booleanValue() || TextUtils.isEmpty((CharSequence) pair2.first)) {
                        C0597l0.k(t7);
                        t7.f11047T.a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
                    } else {
                        C0597l0.k(n7);
                        n7.o();
                        ConnectivityManager connectivityManager = (ConnectivityManager) ((C0597l0) n7.f10616G).f11250G.getSystemService("connectivity");
                        if (connectivityManager != null) {
                            try {
                                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                            } catch (SecurityException unused) {
                                activeNetworkInfo = null;
                            }
                        } else {
                            activeNetworkInfo = null;
                        }
                        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                            StringBuilder sb = new StringBuilder();
                            C0574d1 c0574d1R2 = c0597l0.r();
                            c0574d1R2.m();
                            c0574d1R2.n();
                            if (c0574d1R2.A()) {
                                I1 i11 = ((C0597l0) c0574d1R2.f10616G).f11261R;
                                C0597l0.i(i11);
                                if (i11.v0() >= 234200) {
                                    K0 k10 = c0597l0.f11265V;
                                    C0597l0.j(k10);
                                    C0597l0 c0597l2 = (C0597l0) k10.f10616G;
                                    k10.m();
                                    c0574d1R = c0597l2.r();
                                    c0574d1R.m();
                                    c0574d1R.n();
                                    g8 = c0574d1R.f11146J;
                                    if (g8 == null) {
                                        c0574d1R.q();
                                        T t9 = ((C0597l0) c0574d1R.f10616G).f11258O;
                                        C0597l0.k(t9);
                                        t9.f11046S.a("Failed to get consents; not connected to service yet.");
                                    } else {
                                        c0590jY0 = g8.Y0(c0574d1R.B(false));
                                        c0574d1R.D();
                                        if (c0590jY0 != null) {
                                            bundle = c0590jY0.f11220G;
                                        } else {
                                            bundle = null;
                                        }
                                        if (bundle == null) {
                                            i8 = c0597l0.f11280k0;
                                            c0597l0.f11280k0 = i8 + 1;
                                            if (i8 >= 10) {
                                            }
                                            C0597l0.k(t7);
                                            StringBuilder sb2 = new StringBuilder("Failed to retrieve DMA consent from the service, ");
                                            if (i8 < 10) {
                                                str2 = "Retrying.";
                                            } else {
                                                str2 = "Skipping.";
                                            }
                                            t7.f11046S.b(Integer.valueOf(c0597l0.f11280k0), r.j(sb2, str2, " retryCount"));
                                            if (i10 != 0) {
                                                k8.f10926Z.c(2000L);
                                            }
                                        } else {
                                            C0620x0 c0620x0D = C0620x0.d(100, bundle);
                                            sb.append("&gcs=");
                                            sb.append(c0620x0D.i());
                                            C0606q c0606qA = C0606q.a(100, bundle);
                                            sb.append("&dma=");
                                            sb.append(!Objects.equals(c0606qA.f11336c, Boolean.FALSE) ? 1 : 0);
                                            str = c0606qA.f11337d;
                                            if (!TextUtils.isEmpty(str)) {
                                                sb.append("&dma_cps=");
                                                sb.append(str);
                                            }
                                            int i12 = !Objects.equals(C0606q.d(bundle), Boolean.TRUE) ? 1 : 0;
                                            sb.append("&npa=");
                                            sb.append(i12);
                                            C0597l0.k(t7);
                                            t7.f11047T.b(sb, "Consent query parameters to Bow");
                                        }
                                    }
                                    c0590jY0 = null;
                                    if (c0590jY0 != null) {
                                        bundle = c0590jY0.f11220G;
                                    } else {
                                        bundle = null;
                                    }
                                    if (bundle == null) {
                                        i8 = c0597l0.f11280k0;
                                        c0597l0.f11280k0 = i8 + 1;
                                        if (i8 >= 10) {
                                        }
                                        C0597l0.k(t7);
                                        StringBuilder sb3 = new StringBuilder("Failed to retrieve DMA consent from the service, ");
                                        if (i8 < 10) {
                                            str2 = "Retrying.";
                                        } else {
                                            str2 = "Skipping.";
                                        }
                                        t7.f11046S.b(Integer.valueOf(c0597l0.f11280k0), r.j(sb3, str2, " retryCount"));
                                        if (i10 != 0) {
                                            k8.f10926Z.c(2000L);
                                        }
                                    } else {
                                        C0620x0 c0620x0D2 = C0620x0.d(100, bundle);
                                        sb.append("&gcs=");
                                        sb.append(c0620x0D2.i());
                                        C0606q c0606qA2 = C0606q.a(100, bundle);
                                        sb.append("&dma=");
                                        sb.append(!Objects.equals(c0606qA2.f11336c, Boolean.FALSE) ? 1 : 0);
                                        str = c0606qA2.f11337d;
                                        if (!TextUtils.isEmpty(str)) {
                                            sb.append("&dma_cps=");
                                            sb.append(str);
                                        }
                                        int i13 = !Objects.equals(C0606q.d(bundle), Boolean.TRUE) ? 1 : 0;
                                        sb.append("&npa=");
                                        sb.append(i13);
                                        C0597l0.k(t7);
                                        t7.f11047T.b(sb, "Consent query parameters to Bow");
                                    }
                                }
                            } else {
                                K0 k11 = c0597l0.f11265V;
                                C0597l0.j(k11);
                                C0597l0 c0597l3 = (C0597l0) k11.f10616G;
                                k11.m();
                                c0574d1R = c0597l3.r();
                                c0574d1R.m();
                                c0574d1R.n();
                                g8 = c0574d1R.f11146J;
                                if (g8 == null) {
                                    c0574d1R.q();
                                    T t10 = ((C0597l0) c0574d1R.f10616G).f11258O;
                                    C0597l0.k(t10);
                                    t10.f11046S.a("Failed to get consents; not connected to service yet.");
                                } else {
                                    try {
                                        c0590jY0 = g8.Y0(c0574d1R.B(false));
                                        c0574d1R.D();
                                    } catch (RemoteException e9) {
                                        T t11 = ((C0597l0) c0574d1R.f10616G).f11258O;
                                        C0597l0.k(t11);
                                        t11.f11039L.b(e9, "Failed to get consents; remote exception");
                                        c0590jY0 = null;
                                    }
                                    if (c0590jY0 != null) {
                                        bundle = c0590jY0.f11220G;
                                    } else {
                                        bundle = null;
                                    }
                                    if (bundle == null) {
                                        i8 = c0597l0.f11280k0;
                                        c0597l0.f11280k0 = i8 + 1;
                                        i10 = i8 >= 10 ? 0 : 1;
                                        C0597l0.k(t7);
                                        StringBuilder sb4 = new StringBuilder("Failed to retrieve DMA consent from the service, ");
                                        if (i8 < 10) {
                                            str2 = "Retrying.";
                                        } else {
                                            str2 = "Skipping.";
                                        }
                                        t7.f11046S.b(Integer.valueOf(c0597l0.f11280k0), r.j(sb4, str2, " retryCount"));
                                        if (i10 != 0) {
                                            k8.f10926Z.c(2000L);
                                        }
                                    } else {
                                        C0620x0 c0620x0D3 = C0620x0.d(100, bundle);
                                        sb.append("&gcs=");
                                        sb.append(c0620x0D3.i());
                                        C0606q c0606qA3 = C0606q.a(100, bundle);
                                        sb.append("&dma=");
                                        sb.append(!Objects.equals(c0606qA3.f11336c, Boolean.FALSE) ? 1 : 0);
                                        str = c0606qA3.f11337d;
                                        if (!TextUtils.isEmpty(str)) {
                                            sb.append("&dma_cps=");
                                            sb.append(str);
                                        }
                                        int i14 = !Objects.equals(C0606q.d(bundle), Boolean.TRUE) ? 1 : 0;
                                        sb.append("&npa=");
                                        sb.append(i14);
                                        C0597l0.k(t7);
                                        t7.f11047T.b(sb, "Consent query parameters to Bow");
                                    }
                                }
                                c0590jY0 = null;
                                if (c0590jY0 != null) {
                                    bundle = c0590jY0.f11220G;
                                } else {
                                    bundle = null;
                                }
                                if (bundle == null) {
                                    i8 = c0597l0.f11280k0;
                                    c0597l0.f11280k0 = i8 + 1;
                                    if (i8 >= 10) {
                                    }
                                    C0597l0.k(t7);
                                    StringBuilder sb5 = new StringBuilder("Failed to retrieve DMA consent from the service, ");
                                    if (i8 < 10) {
                                        str2 = "Retrying.";
                                    } else {
                                        str2 = "Skipping.";
                                    }
                                    t7.f11046S.b(Integer.valueOf(c0597l0.f11280k0), r.j(sb5, str2, " retryCount"));
                                    if (i10 != 0) {
                                        k8.f10926Z.c(2000L);
                                    }
                                } else {
                                    C0620x0 c0620x0D4 = C0620x0.d(100, bundle);
                                    sb.append("&gcs=");
                                    sb.append(c0620x0D4.i());
                                    C0606q c0606qA4 = C0606q.a(100, bundle);
                                    sb.append("&dma=");
                                    sb.append(!Objects.equals(c0606qA4.f11336c, Boolean.FALSE) ? 1 : 0);
                                    str = c0606qA4.f11337d;
                                    if (!TextUtils.isEmpty(str)) {
                                        sb.append("&dma_cps=");
                                        sb.append(str);
                                    }
                                    int i15 = !Objects.equals(C0606q.d(bundle), Boolean.TRUE) ? 1 : 0;
                                    sb.append("&npa=");
                                    sb.append(i15);
                                    C0597l0.k(t7);
                                    t7.f11047T.b(sb, "Consent query parameters to Bow");
                                }
                            }
                            I1 i16 = c0597l0.f11261R;
                            C0597l0.i(i16);
                            ((C0597l0) c0597l0.n().f10616G).f11256M.u();
                            String str5 = (String) pair2.first;
                            long jA = z8.f11105b0.a() - 1;
                            String string = sb.toString();
                            try {
                                c.e(str5);
                                c.e(strT);
                                String strConcat = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v119002." + i16.v0()) + "&rdid=" + str5 + "&bundleid=" + strT + "&retry=" + jA;
                                if (strT.equals(((C0597l0) i16.f10616G).f11256M.q("debug.deferred.deeplink"))) {
                                    strConcat = strConcat.concat("&ddl_test=1");
                                }
                                if (!string.isEmpty()) {
                                    if (string.charAt(0) != '&') {
                                        strConcat = strConcat.concat("&");
                                    }
                                    strConcat = strConcat.concat(string);
                                }
                                url = new URL(strConcat);
                            } catch (IllegalArgumentException e10) {
                                e = e10;
                                T t12 = ((C0597l0) i16.f10616G).f11258O;
                                C0597l0.k(t12);
                                t12.f11039L.b(e.getMessage(), "Failed to create BOW URL for Deferred Deep Link. exception");
                                url = null;
                            } catch (MalformedURLException e11) {
                                e = e11;
                                T t13 = ((C0597l0) i16.f10616G).f11258O;
                                C0597l0.k(t13);
                                t13.f11039L.b(e.getMessage(), "Failed to create BOW URL for Deferred Deep Link. exception");
                                url = null;
                            }
                            if (url != null) {
                                C0597l0.k(n7);
                                C0594k0 c0594k0 = new C0594k0(c0597l0);
                                n7.o();
                                C0591j0 c0591j1 = ((C0597l0) n7.f10616G).f11259P;
                                C0597l0.k(c0591j1);
                                c0591j1.w(new V(n7, strT, url, (byte[]) null, (HashMap) null, c0594k0));
                            }
                        } else {
                            C0597l0.k(t7);
                            t7.f11042O.a("Network is not available for Deferred Deep Link request. Skipping");
                        }
                    }
                }
                break;
        }
    }
}
