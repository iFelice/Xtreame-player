package p113o3;

import A0.O;
import C0.C0083h;
import H6.d;
import I6.k;
import Q6.B;
import Q6.C;
import Q6.C0331d;
import Q6.C0332e;
import Q6.D;
import Q6.t;
import Q6.x;
import R.a;
import S0.g;
import S3.e;
import W0.w;
import android.content.Context;
import android.media.MediaFormat;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import com.google.android.gms.internal.ads.BinderC1630lj;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.C0679Bo;
import com.google.android.gms.internal.ads.C0800Ka;
import com.google.android.gms.internal.ads.C1286f0;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C2052tq;
import com.google.android.gms.internal.ads.C2104uq;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.EA;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.FA;
import com.google.android.gms.internal.ads.M;
import com.google.android.gms.internal.ads.Q;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Zo;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.concurrent.Callable;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;
import p027d2.v;
import p083k3.l;
import p090l3.C3099q;
import p090l3.C3117z0;
import p120p3.h;
import pe.hf.black20.R;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class r {
    public static boolean A(JSONArray jSONArray, String str) {
        if (jSONArray != null && str != null) {
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                String strOptString = jSONArray.optString(i8);
                try {
                    if ((((Boolean) C3099q.f26624d.f26627c.a(Q7.ja)).booleanValue() ? Pattern.compile(strOptString, 2) : Pattern.compile(strOptString)).matcher(str).lookingAt()) {
                        return true;
                    }
                } catch (PatternSyntaxException e8) {
                    l.f25980A.f25987g.i("RtbAdapterMap.hasAtleastOneRegexMatch", e8);
                }
            }
        }
        return false;
    }

    public static int B(C1286f0 c1286f0, int i8, int i9, int i10) {
        J(Math.max(Math.max(i8, i9), i10) <= 31);
        int i11 = (1 << i8) - 1;
        int i12 = (1 << i9) - 1;
        Cw.t(Cw.t(i11, i12), 1 << i10);
        if (c1286f0.a() < i8) {
            return -1;
        }
        int iG = c1286f0.g(i8);
        if (iG != i11) {
            return iG;
        }
        if (c1286f0.a() < i9) {
            return -1;
        }
        int iG2 = c1286f0.g(i9);
        int i13 = iG + iG2;
        if (iG2 != i12) {
            return i13;
        }
        if (c1286f0.a() < i10) {
            return -1;
        }
        return i13 + c1286f0.g(i10);
    }

    public static C3117z0 C(int i8, C3117z0 c3117z0) {
        if (i8 == 0) {
            throw null;
        }
        if (i8 == 8) {
            if (((Integer) C3099q.f26624d.f26627c.a(Q7.C7)).intValue() > 0) {
                return c3117z0;
            }
            i8 = 8;
        }
        return H(i8, null, c3117z0);
    }

    public static boolean D(M m7) {
        C1534jr c1534jr = new C1534jr(8);
        int i8 = g.c(m7, c1534jr).f6351a;
        if (i8 != 1380533830 && i8 != 1380333108) {
            return false;
        }
        m7.g(0, c1534jr.f19515a, 4);
        c1534jr.j(0);
        int iR = c1534jr.r();
        if (iR == 1463899717) {
            return true;
        }
        Zo.c("WavHeaderReader", "Unsupported form type: " + iR);
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b1 A[LOOP:0: B:54:0x00af->B:55:0x00b1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x00bf A[ORIG_RETURN, RETURN] */
    public static boolean E(C1534jr c1534jr, Q q7, int i8, w wVar) {
        int iW;
        byte[] bArr;
        int i9;
        int i10;
        long jE = c1534jr.E();
        long j8 = jE >>> 16;
        if (j8 != i8) {
            return false;
        }
        boolean z7 = (j8 & 1) == 1;
        long j9 = jE >> 12;
        long j10 = jE >> 8;
        long j11 = jE >> 4;
        long j12 = jE >> 1;
        long j13 = jE & 1;
        int i11 = (int) (j11 & 15);
        if (i11 > 7 ? !(i11 > 10 || q7.f15534g != 2) : i11 == q7.f15534g - 1) {
            int i12 = (int) (j12 & 7);
            if ((i12 == 0 || i12 == q7.f15536i) && j13 != 1) {
                try {
                    long jG = c1534jr.G();
                    if (!z7) {
                        jG *= (long) q7.f15529b;
                    }
                    wVar.f7458a = jG;
                    int iK = k((int) (j9 & 15), c1534jr);
                    if (iK != -1 && iK <= q7.f15529b) {
                        int i13 = (int) (j10 & 15);
                        if (i13 == 0) {
                            iW = c1534jr.w();
                            int i14 = c1534jr.f19516b;
                            bArr = c1534jr.f19515a;
                            i9 = i14 - 1;
                            int i15 = Et.f13234a;
                            i10 = 0;
                            for (int i16 = c1534jr.f19516b; i16 < i9; i16++) {
                                i10 = Et.f13246m[i10 ^ (bArr[i16] & 255)];
                            }
                            if (iW == i10) {
                                return true;
                            }
                        } else if (i13 > 11) {
                            int i17 = q7.f15532e;
                            if (i13 == 12) {
                                if (c1534jr.w() * 1000 == i17) {
                                    iW = c1534jr.w();
                                    int i18 = c1534jr.f19516b;
                                    bArr = c1534jr.f19515a;
                                    i9 = i18 - 1;
                                    int i19 = Et.f13234a;
                                    i10 = 0;
                                    while (i16 < i9) {
                                        i10 = Et.f13246m[i10 ^ (bArr[i16] & 255)];
                                    }
                                    if (iW == i10) {
                                        return true;
                                    }
                                }
                            } else if (i13 <= 14) {
                                int iA = c1534jr.A();
                                if (i13 == 14) {
                                    iA *= 10;
                                }
                                if (iA == i17) {
                                    iW = c1534jr.w();
                                    int i110 = c1534jr.f19516b;
                                    bArr = c1534jr.f19515a;
                                    i9 = i110 - 1;
                                    int i111 = Et.f13234a;
                                    i10 = 0;
                                    while (i16 < i9) {
                                        i10 = Et.f13246m[i10 ^ (bArr[i16] & 255)];
                                    }
                                    if (iW == i10) {
                                        return true;
                                    }
                                }
                            }
                        } else if (i13 == q7.f15533f) {
                            iW = c1534jr.w();
                            int i112 = c1534jr.f19516b;
                            bArr = c1534jr.f19515a;
                            i9 = i112 - 1;
                            int i113 = Et.f13234a;
                            i10 = 0;
                            while (i16 < i9) {
                                i10 = Et.f13246m[i10 ^ (bArr[i16] & 255)];
                            }
                            if (iW == i10) {
                                return true;
                            }
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return false;
    }

    public static boolean F(String str, CharSequence charSequence) {
        char c8;
        int length = str.length();
        if (str == charSequence) {
            return true;
        }
        if (length != charSequence.length()) {
            return false;
        }
        for (int i8 = 0; i8 < length; i8++) {
            char cCharAt = str.charAt(i8);
            char cCharAt2 = charSequence.charAt(i8);
            if (cCharAt != cCharAt2 && ((c8 = (char) ((cCharAt | ' ') - 97)) >= 26 || c8 != ((char) ((cCharAt2 | ' ') - 97)))) {
                return false;
            }
        }
        return true;
    }

    public static g G(int i8, M m7, C1534jr c1534jr) throws C0800Ka {
        g gVarC = g.c(m7, c1534jr);
        while (true) {
            int i9 = gVarC.f6351a;
            if (i9 == i8) {
                return gVarC;
            }
            p000a.r.p("Ignoring unknown WAV chunk: ", i9, "WavHeaderReader");
            long j8 = gVarC.f6352b;
            long j9 = 8 + j8;
            if ((1 & j8) != 0) {
                j9 = 9 + j8;
            }
            if (j9 > 2147483647L) {
                throw C0800Ka.b("Chunk is too large (~2GB+) to skip; id: " + i9);
            }
            m7.q((int) j9);
            gVarC = g.c(m7, c1534jr);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:55:0x00a5  */
    public static C3117z0 H(int i8, String str, C3117z0 c3117z0) {
        String str2;
        int i9 = i8 - 1;
        if (str == null) {
            if (i8 == 0) {
                throw null;
            }
            str = "No fill.";
            switch (i9) {
                case 1:
                    str = "Invalid request.";
                    break;
                case 2:
                    break;
                case 3:
                    str = "App ID missing.";
                    break;
                case 4:
                    str = "Network error.";
                    break;
                case 5:
                    str = "Invalid request: Invalid ad unit ID.";
                    break;
                case 6:
                    str = "Invalid request: Invalid ad size.";
                    break;
                case 7:
                    str = "A mediation adapter failed to show the ad.";
                    break;
                case 8:
                    str = "The ad is not ready.";
                    break;
                case 9:
                    str = "The ad has already been shown.";
                    break;
                case 10:
                    str = "The ad can not be shown when app is not in foreground.";
                    break;
                case 11:
                default:
                    str = "Internal error.";
                    break;
                case 12:
                    if (((Integer) C3099q.f26624d.f26627c.a(Q7.F7)).intValue() <= 0) {
                        str = "The mediation adapter did not return an ad.";
                    }
                    break;
                case 13:
                    str = "Mismatch request IDs.";
                    break;
                case 14:
                    str = "Invalid ad string.";
                    break;
                case 15:
                    str = "Ad inspector had an internal error.";
                    break;
                case 16:
                    str = "Ad inspector failed to load.";
                    break;
                case 17:
                    str = "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.";
                    break;
                case 18:
                    str = "Ad inspector cannot be opened because it is already open.";
                    break;
            }
        }
        String str3 = str;
        if (i8 == 0) {
            throw null;
        }
        int i10 = 2;
        switch (i9) {
            case 0:
            case 11:
            case 15:
                i10 = 0;
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            case 1:
            case 5:
            case 6:
            case 9:
            case 16:
                i10 = 1;
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            case 2:
            case 10:
            case 18:
                i10 = 3;
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            case 3:
                i10 = 8;
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            case 4:
            case 8:
            case 17:
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            case 7:
                i10 = 4;
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            case 12:
                if (((Integer) C3099q.f26624d.f26627c.a(Q7.F7)).intValue() <= 0) {
                    i10 = 9;
                } else {
                    i10 = 3;
                }
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            case 13:
                i10 = 10;
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            case 14:
                i10 = 11;
                return new C3117z0(i10, str3, "com.google.android.gms.ads", c3117z0, null);
            default:
                switch (i8) {
                    case 1:
                        str2 = "INTERNAL_ERROR";
                        break;
                    case 2:
                        str2 = "INVALID_REQUEST";
                        break;
                    case 3:
                        str2 = "NO_FILL";
                        break;
                    case 4:
                        str2 = "APP_ID_MISSING";
                        break;
                    case 5:
                        str2 = "NETWORK_ERROR";
                        break;
                    case 6:
                        str2 = "INVALID_AD_UNIT_ID";
                        break;
                    case 7:
                        str2 = "INVALID_AD_SIZE";
                        break;
                    case 8:
                        str2 = "MEDIATION_SHOW_ERROR";
                        break;
                    case 9:
                        str2 = "NOT_READY";
                        break;
                    case 10:
                        str2 = "AD_REUSED";
                        break;
                    case 11:
                        str2 = "APP_NOT_FOREGROUND";
                        break;
                    case 12:
                        str2 = "INTERNAL_SHOW_ERROR";
                        break;
                    case 13:
                        str2 = "MEDIATION_NO_FILL";
                        break;
                    case 14:
                        str2 = "REQUEST_ID_MISMATCH";
                        break;
                    case 15:
                        str2 = "INVALID_AD_STRING";
                        break;
                    case 16:
                        str2 = "AD_INSPECTOR_INTERNAL_ERROR";
                        break;
                    case 17:
                        str2 = "AD_INSPECTOR_FAILED_TO_LOAD";
                        break;
                    case 18:
                        str2 = "AD_INSPECTOR_NOT_IN_TEST_MODE";
                        break;
                    default:
                        str2 = "AD_INSPECTOR_ALREADY_OPEN";
                        break;
                }
                throw new AssertionError("Unknown SdkError: ".concat(str2));
        }
    }

    public static void I(C1286f0 c1286f0) {
        c1286f0.v(3);
        c1286f0.v(8);
        boolean zX = c1286f0.x();
        boolean zX2 = c1286f0.x();
        if (zX) {
            c1286f0.v(5);
        }
        if (zX2) {
            c1286f0.v(6);
        }
    }

    public static void J(boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException();
        }
    }

    public static void K(C1286f0 c1286f0) {
        int iG;
        int iG2 = c1286f0.g(2);
        if (iG2 == 0) {
            c1286f0.v(6);
            return;
        }
        int iB = B(c1286f0, 5, 8, 16) + 1;
        if (iG2 == 1) {
            c1286f0.v(iB * 7);
            return;
        }
        if (iG2 == 2) {
            boolean zX = c1286f0.x();
            int i8 = true != zX ? 5 : 1;
            int i9 = true == zX ? 7 : 5;
            int i10 = true == zX ? 8 : 6;
            int i11 = 0;
            while (i11 < iB) {
                if (c1286f0.x()) {
                    c1286f0.v(7);
                    iG = 0;
                } else {
                    if (c1286f0.g(2) == 3 && c1286f0.g(i9) * i8 != 0) {
                        c1286f0.u();
                    }
                    iG = c1286f0.g(i10) * i8;
                    if (iG != 0 && iG != 180) {
                        c1286f0.u();
                    }
                    c1286f0.u();
                }
                if (iG != 0 && iG != 180 && c1286f0.x()) {
                    i11++;
                }
                i11++;
            }
        }
    }

    public static void L(boolean z7, String str) {
        if (!z7) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void M(boolean z7) {
        if (!z7) {
            throw new IllegalStateException();
        }
    }

    public static final Q6.w b(B b8) {
        q0.h(b8, "<this>");
        return new Q6.w(b8);
    }

    public static final x c(D d6) {
        q0.h(d6, "<this>");
        return new x(d6);
    }

    public static final void d(View view) {
        q0.h(view, "<this>");
        N.Q q7 = new N.Q(view, null);
        d dVar = new d();
        dVar.f3787J = e.c(dVar, dVar, q7);
        while (dVar.hasNext()) {
            View view2 = (View) dVar.next();
            a aVar = (a) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new a();
                view2.setTag(R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList = aVar.f6107a;
            int iM = v.m(arrayList);
            if (-1 < iM) {
                O.I(arrayList.get(iM));
                throw null;
            }
        }
    }

    public static final boolean e(AssertionError assertionError) {
        String message;
        Logger logger = t.f6082a;
        return (assertionError.getCause() == null || (message = assertionError.getMessage()) == null || !k.D0(message, "getsockname failed")) ? false : true;
    }

    public static ArrayList f(Object... objArr) {
        int length = objArr.length;
        Cw.g(length, "arraySize");
        ArrayList arrayList = new ArrayList(p190y4.k.d0(((long) length) + 5 + ((long) (length / 10))));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }

    public static final B g(Socket socket) throws IOException {
        Logger logger = t.f6082a;
        q0.h(socket, "<this>");
        C c8 = new C(socket);
        OutputStream outputStream = socket.getOutputStream();
        q0.g(outputStream, "getOutputStream(...)");
        return c8.sink(new C0331d(outputStream, c8));
    }

    public static final D h(Socket socket) throws IOException {
        Logger logger = t.f6082a;
        q0.h(socket, "<this>");
        C c8 = new C(socket);
        InputStream inputStream = socket.getInputStream();
        q0.g(inputStream, "getInputStream(...)");
        return c8.source(new C0332e(inputStream, c8));
    }

    public static AbstractList i(C0083h c0083h, List list) {
        return list instanceof RandomAccess ? new EA(c0083h, list) : new FA(c0083h, list);
    }

    public static int j(int i8) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i8) * (-862048943)), 15)) * 461845907);
    }

    public static int k(int i8, C1534jr c1534jr) {
        switch (i8) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i8 - 2);
            case 6:
                return c1534jr.w() + 1;
            case 7:
                return c1534jr.A() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i8 - 8);
            default:
                return -1;
        }
    }

    public static Object l(Context context, Callable callable) {
        try {
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                return callable.call();
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        } catch (Throwable th) {
            h.e("Unexpected exception.", th);
            C0667Bc.a(context).b("StrictModeUtil.runWithLaxStrictMode", th);
            return null;
        }
    }

    public static String m(String str) {
        int length = str.length();
        int i8 = 0;
        while (i8 < length) {
            char cCharAt = str.charAt(i8);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                char[] charArray = str.toCharArray();
                while (i8 < length) {
                    char c8 = charArray[i8];
                    if (c8 >= 'A' && c8 <= 'Z') {
                        charArray[i8] = (char) (c8 ^ ' ');
                    }
                    i8++;
                }
                return String.valueOf(charArray);
            }
            i8++;
        }
        return str;
    }

    public static String n(JSONObject jSONObject, String str, String str2) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject != null && (jSONArrayOptJSONArray = jSONObject.optJSONArray(str2)) != null) {
            for (int i8 = 0; i8 < jSONArrayOptJSONArray.length(); i8++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i8);
                if (jSONObjectOptJSONObject != null) {
                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("including");
                    JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject.optJSONArray("excluding");
                    if (A(jSONArrayOptJSONArray2, str) && !A(jSONArrayOptJSONArray3, str)) {
                        return jSONObjectOptJSONObject.optString("effective_ad_unit_id", HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
            }
        }
        return HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public static C3117z0 o(Throwable th) {
        if (th instanceof C2052tq) {
            C2052tq c2052tq = (C2052tq) th;
            return C(c2052tq.f12497G, c2052tq.f21151H);
        }
        if (th instanceof C0679Bo) {
            if (th.getMessage() == null) {
                return H(((C0679Bo) th).f12497G, null, null);
            }
            C0679Bo c0679Bo = (C0679Bo) th;
            return H(c0679Bo.f12497G, th.getMessage(), null);
        }
        if (!(th instanceof C3157o)) {
            return H(1, null, null);
        }
        C3157o c3157o = (C3157o) th;
        int i8 = c3157o.f27986G;
        String message = c3157o.getMessage();
        if (message == null) {
            message = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        return new C3117z0(i8, message, "com.google.android.gms.ads", null, null);
    }

    public static void p(int i8, int i9) {
        if (i8 < 0 || i8 >= i9) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static void q(int i8, String str) {
        if (i8 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i8);
    }

    public static void r(MediaFormat mediaFormat, String str, int i8) {
        if (i8 != -1) {
            mediaFormat.setInteger(str, i8);
        }
    }

    public static void s(String str, Exception exc) {
        Log.e("OMIDLIB", str, exc);
    }

    public static int t(Object obj) {
        return j(obj == null ? 0 : obj.hashCode());
    }

    public static String u(String str) {
        int length = str.length();
        int i8 = 0;
        while (i8 < length) {
            char cCharAt = str.charAt(i8);
            if (cCharAt >= 'a' && cCharAt <= 'z') {
                char[] charArray = str.toCharArray();
                while (i8 < length) {
                    char c8 = charArray[i8];
                    if (c8 >= 'a' && c8 <= 'z') {
                        charArray[i8] = (char) (c8 ^ ' ');
                    }
                    i8++;
                }
                return String.valueOf(charArray);
            }
            i8++;
        }
        return str;
    }

    public static C3117z0 v(Throwable th, C2104uq c2104uq) {
        C3117z0 c3117z0;
        C3117z0 c3117z0O = o(th);
        int i8 = c3117z0O.f26629G;
        if ((i8 == 3 || i8 == 0) && (c3117z0 = c3117z0O.f26632J) != null && !c3117z0.f26631I.equals("com.google.android.gms.ads")) {
            c3117z0O.f26632J = null;
        }
        if (c2104uq != null) {
            c3117z0O.f26633K = new BinderC1630lj(c2104uq.f21394e, HttpUrl.FRAGMENT_ENCODE_SET, c2104uq, c2104uq.f21393d, c2104uq.f21392c);
        }
        return c3117z0O;
    }

    public static void w(MediaFormat mediaFormat, List list) {
        for (int i8 = 0; i8 < list.size(); i8++) {
            mediaFormat.setByteBuffer(p000a.r.f("csd-", i8), ByteBuffer.wrap((byte[]) list.get(i8)));
        }
    }

    public static void x(Object obj) {
        if (obj == null) {
            throw new IllegalStateException();
        }
    }

    public static void y(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
        }
        if (obj2 == null) {
            throw new NullPointerException(p000a.r.g("null value in entry: ", obj.toString(), "=null"));
        }
    }

    public static boolean z(Object obj, Map map) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }
}
