package F2;

import A0.O;
import C0.C0083h;
import K3.InterfaceC0244q;
import Q6.AbstractC0328a;
import Q6.AbstractC0329b;
import W0.InterfaceC0375h;
import W0.L;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.AbstractBinderC1109be;
import com.google.android.gms.internal.ads.AbstractBinderC1313fc;
import com.google.android.gms.internal.ads.AbstractBinderC1623lc;
import com.google.android.gms.internal.ads.AbstractC0852Nh;
import com.google.android.gms.internal.ads.BinderC1329fs;
import com.google.android.gms.internal.ads.C1057ae;
import com.google.android.gms.internal.ads.C1074av;
import com.google.android.gms.internal.ads.C1261ec;
import com.google.android.gms.internal.ads.C1332fv;
import com.google.android.gms.internal.ads.C1433hs;
import com.google.android.gms.internal.ads.C1535js;
import com.google.android.gms.internal.ads.C1571kc;
import com.google.android.gms.internal.ads.Gv;
import com.google.android.gms.internal.ads.InterfaceC0779Ij;
import com.google.android.gms.internal.ads.InterfaceC0868Oj;
import com.google.android.gms.internal.ads.InterfaceC0869Ok;
import com.google.android.gms.internal.ads.InterfaceC0938Tj;
import com.google.android.gms.internal.ads.InterfaceC1037a9;
import com.google.android.gms.internal.ads.InterfaceC1160ce;
import com.google.android.gms.internal.ads.InterfaceC1218dk;
import com.google.android.gms.internal.ads.InterfaceC1234e0;
import com.google.android.gms.internal.ads.InterfaceC1365gc;
import com.google.android.gms.internal.ads.InterfaceC1675mc;
import com.google.android.gms.internal.ads.InterfaceC1838pj;
import com.google.android.gms.internal.ads.InterfaceC1942rk;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.N;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Xv;
import com.google.android.gms.internal.ads.Y;
import com.google.android.gms.internal.ads.Y8;
import com.google.android.gms.internal.ads.Z8;
import com.google.api.Service;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.videolan.libvlc.media.MediaPlayer;
import p032e0.I;
import p090l3.C3099q;
import p090l3.C3107u0;
import p090l3.InterfaceC3067a;
import p090l3.K;
import p090l3.d1;
import p094m0.C3136t;
import pe.hf.black20.R;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public class G implements F, p173w2.o, I2.a, J2.h, J2.g, J2.o, Q2.c, Q2.a, p120p3.i, InterfaceC0244q, S3.b, W2.b, InterfaceC0375h, p126q1.k, F1.b, M1.c, W0.u, I, N, InterfaceC1942rk, InterfaceC1218dk {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static G f3114H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static G f3115I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f3116G;

    public /* synthetic */ G() {
        this.f3116G = 25;
    }

    public static boolean A(String str, String str2) {
        q0.h(str, "current");
        if (q0.c(str, str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i8 < str.length()) {
                char cCharAt = str.charAt(i8);
                int i11 = i10 + 1;
                if (i10 != 0 || cCharAt == '(') {
                    if (cCharAt == '(') {
                        i9++;
                    } else if (cCharAt != ')' || (i9 = i9 - 1) != 0 || i10 == str.length() - 1) {
                    }
                    i8++;
                    i10 = i11;
                }
            }
            if (i9 == 0) {
                String strSubstring = str.substring(1, str.length() - 1);
                q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                return q0.c(I6.k.X0(strSubstring).toString(), str2);
            }
        }
        return false;
    }

    public static byte[] B(long j8, z4.H h8) {
        C0083h c0083h = new C0083h(12);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(h8.size());
        Iterator<E> it = h8.iterator();
        while (it.hasNext()) {
            arrayList.add((Bundle) c0083h.apply(it.next()));
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayList);
        bundle.putLong("d", j8);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    public static Q6.m C(String str) {
        q0.h(str, "<this>");
        byte[] bytes = str.getBytes(I6.a.f4021a);
        q0.g(bytes, "this as java.lang.String).getBytes(charset)");
        Q6.m mVar = new Q6.m(bytes);
        mVar.f6068I = str;
        return mVar;
    }

    public static String G(String str, String str2) {
        q0.h(str, "tableName");
        q0.h(str2, "triggerType");
        return "`room_table_modification_trigger_" + str + '_' + str2 + '`';
    }

    public static Q6.u H(Q6.m... mVarArr) {
        int i8;
        int iCompareTo;
        int i9 = 0;
        if (mVarArr.length == 0) {
            return new Q6.u(new Q6.m[0], new int[]{0, -1});
        }
        ArrayList arrayList = new ArrayList(new p162u6.h(mVarArr, false));
        if (arrayList.size() > 1) {
            Collections.sort(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(mVarArr.length);
        for (Q6.m mVar : mVarArr) {
            arrayList2.add(-1);
        }
        Integer[] numArr = (Integer[]) arrayList2.toArray(new Integer[0]);
        Object[] objArrCopyOf = Arrays.copyOf(numArr, numArr.length);
        q0.h(objArrCopyOf, "elements");
        ArrayList arrayList3 = objArrCopyOf.length == 0 ? new ArrayList() : new ArrayList(new p162u6.h(objArrCopyOf, true));
        int length = mVarArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            Q6.m mVar2 = mVarArr[i10];
            int i12 = i11 + 1;
            int size = arrayList.size();
            int size2 = arrayList.size();
            if (size < 0) {
                throw new IllegalArgumentException(O.y("fromIndex (0) is greater than toIndex (", size, ")."));
            }
            if (size > size2) {
                throw new IndexOutOfBoundsException("toIndex (" + size + ") is greater than size (" + size2 + ").");
            }
            int i13 = size - 1;
            int i14 = 0;
            while (true) {
                if (i14 > i13) {
                    i8 = -(i14 + 1);
                    break;
                }
                i8 = (i14 + i13) >>> 1;
                Comparable comparable = (Comparable) arrayList.get(i8);
                if (comparable == mVar2) {
                    iCompareTo = 0;
                } else if (comparable == null) {
                    iCompareTo = -1;
                } else {
                    iCompareTo = mVar2 == null ? 1 : comparable.compareTo(mVar2);
                }
                if (iCompareTo >= 0) {
                    if (iCompareTo <= 0) {
                        break;
                    }
                    i13 = i8 - 1;
                } else {
                    i14 = i8 + 1;
                }
            }
            arrayList3.set(i8, Integer.valueOf(i11));
            i10++;
            i11 = i12;
        }
        if (((Q6.m) arrayList.get(0)).c() <= 0) {
            throw new IllegalArgumentException("the empty byte string is not a supported option".toString());
        }
        int i15 = 0;
        while (i15 < arrayList.size()) {
            Q6.m mVar3 = (Q6.m) arrayList.get(i15);
            int i16 = i15 + 1;
            int i17 = i16;
            while (i17 < arrayList.size()) {
                Q6.m mVar4 = (Q6.m) arrayList.get(i17);
                mVar4.getClass();
                q0.h(mVar3, "prefix");
                if (!mVar4.i(mVar3, mVar3.c())) {
                    break;
                }
                if (mVar4.c() == mVar3.c()) {
                    throw new IllegalArgumentException(("duplicate option: " + mVar4).toString());
                }
                if (((Number) arrayList3.get(i17)).intValue() > ((Number) arrayList3.get(i15)).intValue()) {
                    arrayList.remove(i17);
                    arrayList3.remove(i17);
                } else {
                    i17++;
                }
            }
            i15 = i16;
        }
        Q6.j jVar = new Q6.j();
        v(0L, jVar, 0, arrayList, 0, arrayList.size(), arrayList3);
        int[] iArr = new int[(int) (jVar.f6064H / ((long) 4))];
        while (!jVar.q()) {
            iArr[i9] = jVar.readInt();
            i9++;
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(mVarArr, mVarArr.length);
        q0.g(objArrCopyOf2, "copyOf(this, size)");
        return new Q6.u((Q6.m[]) objArrCopyOf2, iArr);
    }

    public static Q6.m I(byte[] bArr) {
        Q6.m mVar = Q6.m.f6065J;
        int length = bArr.length;
        AbstractC0329b.b(bArr.length, 0, length);
        S3.e.b(length, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, length);
        q0.g(bArrCopyOfRange, "copyOfRange(...)");
        return new Q6.m(bArrCopyOfRange);
    }

    public static CookieManager L() {
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        int iMyUid = Process.myUid();
        if (iMyUid == 0 || iMyUid == 1000) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            p120p3.h.e("Failed to obtain CookieManager.", th);
            p083k3.l.f25980A.f25987g.h("ApiLevelUtil.getCookieManager", th);
            return null;
        }
    }

    public static final void M(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z7) {
        if (adOverlayInfoParcel.f11647Q != 4 || adOverlayInfoParcel.f11639I != null) {
            Intent intent = new Intent();
            intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
            intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.f11649S.f28199J);
            intent.putExtra("shouldCallOnOverlayOpened", z7);
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
            intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            p113o3.O.p(context, intent);
            return;
        }
        InterfaceC3067a interfaceC3067a = adOverlayInfoParcel.f11638H;
        if (interfaceC3067a != null) {
            interfaceC3067a.x();
        }
        InterfaceC0869Ok interfaceC0869Ok = adOverlayInfoParcel.f11657a0;
        if (interfaceC0869Ok != null) {
            interfaceC0869Ok.q();
        }
        Activity activityZzi = adOverlayInfoParcel.f11640J.zzi();
        p105n3.f fVar = adOverlayInfoParcel.f11637G;
        if (fVar != null && fVar.f27503P && activityZzi != null) {
            context = activityZzi;
        }
        G g8 = p083k3.l.f25980A.f25981a;
        P(context, fVar, adOverlayInfoParcel.f11645O, fVar != null ? fVar.f27502O : null);
    }

    public static final boolean N(Context context, Intent intent, p105n3.c cVar, p105n3.a aVar, boolean z7) {
        int iB;
        if (z7) {
            Uri data = intent.getData();
            try {
                p083k3.l.f25980A.f25983c.getClass();
                iB = p113o3.O.B(context, data);
                if (cVar != null) {
                    cVar.zzg();
                }
            } catch (ActivityNotFoundException e8) {
                p120p3.h.g(e8.getMessage());
                iB = 6;
            }
            if (aVar != null) {
                aVar.zzb(iB);
            }
            return iB == 5;
        }
        try {
            p113o3.I.k("Launching an intent: " + intent.toURI());
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            p113o3.O.p(context, intent);
            if (cVar != null) {
                cVar.zzg();
            }
            if (aVar != null) {
                aVar.a(true);
            }
            return true;
        } catch (ActivityNotFoundException e9) {
            p120p3.h.g(e9.getMessage());
            if (aVar != null) {
                aVar.a(false);
            }
            return false;
        }
    }

    private static void O(Object obj) {
        BinderC1329fs binderC1329fs = (BinderC1329fs) ((InterfaceC0938Tj) obj);
        synchronized (binderC1329fs) {
            try {
                if (!binderC1329fs.f18813H.e()) {
                    C1332fv c1332fv = binderC1329fs.f18813H;
                    c1332fv.f18840N.a1(c1332fv.f18842P.a());
                    return;
                }
                d1 d1VarL = binderC1329fs.f18817L.f17531b;
                AbstractC0852Nh abstractC0852Nh = binderC1329fs.f18820O;
                if (abstractC0852Nh != null && abstractC0852Nh.g() != null && binderC1329fs.f18817L.f17546q) {
                    d1VarL = U4.a.l(binderC1329fs.f18812G, Collections.singletonList(binderC1329fs.f18820O.g()));
                }
                binderC1329fs.z3(d1VarL);
                Xv xv = binderC1329fs.f18817L;
                xv.f17545p = true;
                try {
                    binderC1329fs.A3(xv.f17530a);
                } catch (RemoteException unused) {
                    p120p3.h.g("Failed to refresh the banner ad.");
                }
                binderC1329fs.f18817L.f17545p = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final boolean P(Context context, p105n3.f fVar, p105n3.c cVar, p105n3.a aVar) {
        int i8 = 0;
        if (fVar == null) {
            p120p3.h.g("No intent data for launcher overlay.");
            return false;
        }
        Q7.a(context);
        boolean z7 = fVar.f27503P;
        Intent intent = fVar.f27501N;
        if (intent != null) {
            return N(context, intent, cVar, aVar, z7);
        }
        Intent intent2 = new Intent();
        String str = fVar.f27495H;
        if (TextUtils.isEmpty(str)) {
            p120p3.h.g("Open GMSG did not contain a URL.");
            return false;
        }
        String str2 = fVar.f27496I;
        if (TextUtils.isEmpty(str2)) {
            intent2.setData(Uri.parse(str));
        } else {
            intent2.setDataAndType(Uri.parse(str), str2);
        }
        intent2.setAction("android.intent.action.VIEW");
        String str3 = fVar.f27497J;
        if (!TextUtils.isEmpty(str3)) {
            intent2.setPackage(str3);
        }
        String str4 = fVar.f27498K;
        if (!TextUtils.isEmpty(str4)) {
            String[] strArrSplit = str4.split(MqttTopic.TOPIC_LEVEL_SEPARATOR, 2);
            if (strArrSplit.length < 2) {
                p120p3.h.g("Could not parse component name from open GMSG: ".concat(str4));
                return false;
            }
            intent2.setClassName(strArrSplit[0], strArrSplit[1]);
        }
        String str5 = fVar.f27499L;
        if (!TextUtils.isEmpty(str5)) {
            try {
                i8 = Integer.parseInt(str5);
            } catch (NumberFormatException unused) {
                p120p3.h.g("Could not parse intent flags.");
            }
            intent2.addFlags(i8);
        }
        J7 j8 = Q7.f15844h4;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) c3099q.f26627c.a(Q7.f15835g4)).booleanValue()) {
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                p113o3.O.D(context, intent2);
            }
        }
        return N(context, intent2, cVar, aVar, z7);
    }

    public static void u(P1.u uVar, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i8 = 0;
        while (i8 < length) {
            Object obj = objArr[i8];
            i8++;
            if (obj == null) {
                uVar.J(i8);
            } else if (obj instanceof byte[]) {
                uVar.A(i8, (byte[]) obj);
            } else if (obj instanceof Float) {
                uVar.o(i8, ((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                uVar.o(i8, ((Number) obj).doubleValue());
            } else if (obj instanceof Long) {
                uVar.w(i8, ((Number) obj).longValue());
            } else if (obj instanceof Integer) {
                uVar.w(i8, ((Number) obj).intValue());
            } else if (obj instanceof Short) {
                uVar.w(i8, ((Number) obj).shortValue());
            } else if (obj instanceof Byte) {
                uVar.w(i8, ((Number) obj).byteValue());
            } else if (obj instanceof String) {
                uVar.g(i8, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i8 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                }
                uVar.w(i8, ((Boolean) obj).booleanValue() ? 1L : 0L);
            }
        }
    }

    public static void v(long j8, Q6.j jVar, int i8, ArrayList arrayList, int i9, int i10, ArrayList arrayList2) {
        int i11;
        int i12;
        int i13;
        int i14 = i8;
        if (i9 >= i10) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        for (int i15 = i9; i15 < i10; i15++) {
            if (((Q6.m) arrayList.get(i15)).c() < i14) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }
        Q6.m mVar = (Q6.m) arrayList.get(i9);
        Q6.m mVar2 = (Q6.m) arrayList.get(i10 - 1);
        if (i14 == mVar.c()) {
            int iIntValue = ((Number) arrayList2.get(i9)).intValue();
            int i16 = i9 + 1;
            Q6.m mVar3 = (Q6.m) arrayList.get(i16);
            i11 = i16;
            i12 = iIntValue;
            mVar = mVar3;
        } else {
            i11 = i9;
            i12 = -1;
        }
        if (mVar.f(i14) == mVar2.f(i14)) {
            int iMin = Math.min(mVar.c(), mVar2.c());
            int i17 = 0;
            for (int i18 = i14; i18 < iMin && mVar.f(i18) == mVar2.f(i18); i18++) {
                i17++;
            }
            long j9 = 4;
            long j10 = (jVar.f6064H / j9) + j8 + ((long) 2) + ((long) i17) + 1;
            jVar.r0(-i17);
            jVar.r0(i12);
            int i19 = i17 + i14;
            while (i14 < i19) {
                jVar.r0(mVar.f(i14) & 255);
                i14++;
            }
            if (i11 + 1 == i10) {
                if (i19 != ((Q6.m) arrayList.get(i11)).c()) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                jVar.r0(((Number) arrayList2.get(i11)).intValue());
                return;
            } else {
                Q6.j jVar2 = new Q6.j();
                jVar.r0(((int) ((jVar2.f6064H / j9) + j10)) * (-1));
                v(j10, jVar2, i19, arrayList, i11, i10, arrayList2);
                jVar.H(jVar2);
                return;
            }
        }
        int i20 = 1;
        for (int i21 = i11 + 1; i21 < i10; i21++) {
            if (((Q6.m) arrayList.get(i21 - 1)).f(i14) != ((Q6.m) arrayList.get(i21)).f(i14)) {
                i20++;
            }
        }
        long j11 = 4;
        long j12 = (jVar.f6064H / j11) + j8 + ((long) 2) + ((long) (i20 * 2));
        jVar.r0(i20);
        jVar.r0(i12);
        for (int i22 = i11; i22 < i10; i22++) {
            int iF = ((Q6.m) arrayList.get(i22)).f(i14);
            if (i22 == i11 || iF != ((Q6.m) arrayList.get(i22 - 1)).f(i14)) {
                jVar.r0(iF & 255);
            }
        }
        Q6.j jVar3 = new Q6.j();
        int i23 = i11;
        while (i23 < i10) {
            byte bF = ((Q6.m) arrayList.get(i23)).f(i14);
            int i24 = i23 + 1;
            int i25 = i24;
            while (true) {
                if (i25 >= i10) {
                    i13 = i10;
                    break;
                } else {
                    if (bF != ((Q6.m) arrayList.get(i25)).f(i14)) {
                        i13 = i25;
                        break;
                    }
                    i25++;
                }
            }
            if (i24 == i13 && i14 + 1 == ((Q6.m) arrayList.get(i23)).c()) {
                jVar.r0(((Number) arrayList2.get(i23)).intValue());
            } else {
                jVar.r0(((int) ((jVar3.f6064H / j11) + j12)) * (-1));
                v(j12, jVar3, i14 + 1, arrayList, i23, i13, arrayList2);
            }
            jVar3 = jVar3;
            i23 = i13;
        }
        jVar.H(jVar3);
    }

    public static S1.f w(S1.g gVar) {
        q0.h(gVar, "owner");
        return new S1.f(gVar);
    }

    /* JADX WARN: Code duplicated, block: B:66:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:83:? A[RETURN, SYNTHETIC] */
    public static Q6.m y(String str) {
        int i8;
        char cCharAt;
        q0.h(str, "<this>");
        byte[] bArr = AbstractC0328a.f6046a;
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i9 = (int) ((((long) length) * 6) / 8);
        byte[] bArrCopyOf = new byte[i9];
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i10 >= length) {
                int i14 = i11 % 4;
                if (i14 != 1) {
                    if (i14 == 2) {
                        bArrCopyOf[i13] = (byte) ((i12 << 12) >> 16);
                        i13++;
                    } else if (i14 == 3) {
                        int i15 = i12 << 6;
                        int i16 = i13 + 1;
                        bArrCopyOf[i13] = (byte) (i15 >> 16);
                        i13 += 2;
                        bArrCopyOf[i16] = (byte) (i15 >> 8);
                    }
                    if (i13 != i9) {
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, i13);
                        q0.g(bArrCopyOf, "copyOf(this, newSize)");
                    }
                }
                if (bArrCopyOf != null) {
                    return new Q6.m(bArrCopyOf);
                }
                return null;
            }
            char cCharAt2 = str.charAt(i10);
            if ('A' <= cCharAt2 && cCharAt2 < '[') {
                i8 = cCharAt2 - 'A';
            } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                i8 = cCharAt2 - 'G';
            } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                i8 = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i8 = 62;
            } else {
                if (cCharAt2 != '/' && cCharAt2 != '_') {
                    if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                        break;
                    }
                } else {
                    i8 = 63;
                }
                i10++;
            }
            i12 = (i12 << 6) | i8;
            i11++;
            if (i11 % 4 == 0) {
                bArrCopyOf[i13] = (byte) (i12 >> 16);
                int i17 = i13 + 2;
                bArrCopyOf[i13 + 1] = (byte) (i12 >> 8);
                i13 += 3;
                bArrCopyOf[i17] = (byte) i12;
            }
            i10++;
        }
        bArrCopyOf = null;
        if (bArrCopyOf != null) {
            return new Q6.m(bArrCopyOf);
        }
        return null;
    }

    public static Q6.m z(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i8 = 0; i8 < length; i8++) {
            int i9 = i8 * 2;
            bArr[i8] = (byte) (R6.b.a(str.charAt(i9 + 1)) + (R6.b.a(str.charAt(i9)) << 4));
        }
        return new Q6.m(bArr);
    }

    public int D(C3136t c3136t) {
        switch (this.f3116G) {
            case 3:
                String str = c3136t.f27041o;
                if (str != null) {
                    str.hashCode();
                    switch (str) {
                        case "application/dvbsubs":
                        case "application/pgs":
                        case "application/x-mp4-vtt":
                        case "application/x-quicktime-tx3g":
                        case "application/vobsub":
                            return 2;
                        case "text/vtt":
                        case "text/x-ssa":
                        case "application/x-subrip":
                        case "application/ttml+xml":
                            return 1;
                    }
                }
                throw new IllegalArgumentException(p148t.a.c("Unsupported MIME type: ", str));
            default:
                return 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009a  */
    /* JADX WARN: Code duplicated, block: B:72:0x0126  */
    /* JADX WARN: Code duplicated, block: B:83:0x012b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x009f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r7v2 */
    public String E(String str) throws Throwable {
        ?? r7;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        HttpURLConnection httpURLConnection;
        String str2 = "GET";
        ?? r8 = 0;
        string = null;
        string = null;
        string = null;
        string = null;
        String string = null;
        HttpURLConnection httpURLConnection2 = null;
        String string2 = null;
        try {
            switch (this.f3116G) {
                case 4:
                    try {
                        httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        try {
                            httpURLConnection.setRequestMethod("GET");
                            httpURLConnection.setReadTimeout(35000);
                            httpURLConnection.setConnectTimeout(40000);
                            httpURLConnection.connect();
                            InputStream inputStream = httpURLConnection.getInputStream();
                            StringBuffer stringBuffer = new StringBuffer();
                            if (inputStream == null) {
                                httpURLConnection.disconnect();
                            } else {
                                bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
                                while (true) {
                                    try {
                                        try {
                                            try {
                                                String line = bufferedReader2.readLine();
                                                if (line != null) {
                                                    stringBuffer.append(line + "\n");
                                                } else {
                                                    if (stringBuffer.length() == 0) {
                                                        Log.d("------", "buffer.length() == 0");
                                                    }
                                                    string = stringBuffer.toString();
                                                    httpURLConnection.disconnect();
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                httpURLConnection2 = httpURLConnection;
                                                if (httpURLConnection2 != null) {
                                                    httpURLConnection2.disconnect();
                                                }
                                                if (bufferedReader2 != null) {
                                                    try {
                                                        bufferedReader2.close();
                                                    } catch (IOException unused) {
                                                        Log.d("------", "final IOException e");
                                                    }
                                                    break;
                                                }
                                                throw th;
                                            }
                                        } catch (IOException unused2) {
                                            Log.d("XCIPTV_TAG", "---------WebServicesAdapter IOException-----------");
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                            if (bufferedReader2 != null) {
                                            }
                                            return string;
                                        }
                                        bufferedReader2.close();
                                    } catch (IOException unused3) {
                                        Log.d("------", "final IOException e");
                                    }
                                }
                            }
                        } catch (IOException unused4) {
                            bufferedReader2 = null;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader2 = null;
                            httpURLConnection2 = httpURLConnection;
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            if (bufferedReader2 != null) {
                                bufferedReader2.close();
                                break;
                            }
                            throw th;
                        }
                        break;
                    } catch (IOException unused5) {
                        httpURLConnection = null;
                        bufferedReader2 = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader2 = null;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                            break;
                        }
                        throw th;
                    }
                    return string;
                default:
                    try {
                        str = (HttpURLConnection) new URL(str).openConnection();
                        try {
                            str.setRequestMethod("GET");
                            str.setReadTimeout(40000);
                            str.setConnectTimeout(40000);
                            str.setRequestProperty("connection", "close");
                            str.connect();
                            InputStream inputStream2 = str.getInputStream();
                            StringBuffer stringBuffer2 = new StringBuffer();
                            if (inputStream2 == null) {
                                str.disconnect();
                            } else {
                                bufferedReader = new BufferedReader(new InputStreamReader(inputStream2));
                                while (true) {
                                    try {
                                        try {
                                            String line2 = bufferedReader.readLine();
                                            if (line2 != null) {
                                                stringBuffer2.append(line2 + "\n");
                                            } else {
                                                if (stringBuffer2.length() == 0) {
                                                    Log.d("------", "buffer.length() == 0");
                                                }
                                                string2 = stringBuffer2.toString();
                                                str.disconnect();
                                            }
                                        } catch (IOException unused6) {
                                            Log.d("XCIPTV_TAG", "---------WebServicesAdapter IOException-----------");
                                            if (str != 0) {
                                                str.disconnect();
                                            }
                                            if (bufferedReader != null) {
                                            }
                                            return string2;
                                        }
                                        bufferedReader.close();
                                    } catch (IOException unused7) {
                                        Log.d("------", "final IOException e");
                                    }
                                }
                            }
                        } catch (IOException unused8) {
                            bufferedReader = null;
                        } catch (Throwable th4) {
                            th = th4;
                            str2 = null;
                            r8 = str;
                            r7 = str2;
                            if (r8 != 0) {
                                r8.disconnect();
                            }
                            if (r7 != 0) {
                                try {
                                    r7.close();
                                } catch (IOException unused9) {
                                    Log.d("------", "final IOException e");
                                }
                                break;
                            }
                            throw th;
                        }
                        break;
                    } catch (IOException unused10) {
                        str = 0;
                        bufferedReader = null;
                    } catch (Throwable th5) {
                        th = th5;
                        r7 = 0;
                        if (r8 != 0) {
                            r8.disconnect();
                        }
                        if (r7 != 0) {
                            r7.close();
                            break;
                        }
                        throw th;
                    }
                    return string2;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:76:0x0150  */
    /* JADX WARN: Code duplicated, block: B:83:0x0155 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public String F(String str, String str2) throws Throwable {
        BufferedReader bufferedReader;
        HttpURLConnection httpURLConnection;
        BufferedReader bufferedReader2;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3 = null;
        string = null;
        string = null;
        string = null;
        string = null;
        String string = null;
        HttpURLConnection httpURLConnection4 = null;
        String string2 = null;
        switch (this.f3116G) {
            case 6:
                try {
                    httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                    try {
                        httpURLConnection.setRequestMethod("POST");
                        httpURLConnection.setReadTimeout(35000);
                        httpURLConnection.setConnectTimeout(40000);
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        outputStream.write(str2.getBytes());
                        outputStream.flush();
                        outputStream.close();
                        InputStream inputStream = httpURLConnection.getInputStream();
                        StringBuffer stringBuffer = new StringBuffer();
                        if (inputStream == null) {
                            httpURLConnection.disconnect();
                        } else {
                            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                            while (true) {
                                try {
                                    try {
                                        try {
                                            String line = bufferedReader.readLine();
                                            if (line != null) {
                                                stringBuffer.append(line + "\n");
                                            } else {
                                                if (stringBuffer.length() == 0) {
                                                    Log.d("------", "buffer.length() == 0");
                                                }
                                                string2 = stringBuffer.toString();
                                                httpURLConnection.disconnect();
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            httpURLConnection3 = httpURLConnection;
                                            if (httpURLConnection3 != null) {
                                                httpURLConnection3.disconnect();
                                            }
                                            if (bufferedReader != null) {
                                                try {
                                                    bufferedReader.close();
                                                } catch (IOException unused) {
                                                    Log.d("------", "final IOException e");
                                                }
                                                break;
                                            }
                                            throw th;
                                        }
                                    } catch (IOException e8) {
                                        e = e8;
                                        e.printStackTrace();
                                        Log.d("XCIPTV_TAG", "---------WebServicesAdapter IOException-----------");
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        if (bufferedReader != null) {
                                        }
                                        return string2;
                                    }
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                    Log.d("------", "final IOException e");
                                }
                            }
                        }
                    } catch (IOException e9) {
                        e = e9;
                        bufferedReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = null;
                        httpURLConnection3 = httpURLConnection;
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                            break;
                        }
                        throw th;
                    }
                    break;
                } catch (IOException e10) {
                    e = e10;
                    httpURLConnection = null;
                    bufferedReader = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = null;
                    if (httpURLConnection3 != null) {
                        httpURLConnection3.disconnect();
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                        break;
                    }
                    throw th;
                }
                return string2;
            default:
                try {
                    httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                    try {
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setReadTimeout(35000);
                        httpURLConnection2.setConnectTimeout(40000);
                        httpURLConnection2.setDoOutput(true);
                        OutputStream outputStream2 = httpURLConnection2.getOutputStream();
                        outputStream2.write(str2.getBytes());
                        outputStream2.flush();
                        outputStream2.close();
                        InputStream inputStream2 = httpURLConnection2.getInputStream();
                        StringBuffer stringBuffer2 = new StringBuffer();
                        if (inputStream2 == null) {
                            httpURLConnection2.disconnect();
                        } else {
                            bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream2));
                            while (true) {
                                try {
                                    try {
                                        try {
                                            String line2 = bufferedReader2.readLine();
                                            if (line2 != null) {
                                                stringBuffer2.append(line2 + "\n");
                                            } else {
                                                if (stringBuffer2.length() == 0) {
                                                    Log.d("------", "buffer.length() == 0");
                                                }
                                                string = stringBuffer2.toString();
                                                httpURLConnection2.disconnect();
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            httpURLConnection4 = httpURLConnection2;
                                            if (httpURLConnection4 != null) {
                                                httpURLConnection4.disconnect();
                                            }
                                            if (bufferedReader2 != null) {
                                                try {
                                                    bufferedReader2.close();
                                                } catch (IOException unused3) {
                                                    Log.d("------", "final IOException e");
                                                }
                                                break;
                                            }
                                            throw th;
                                        }
                                    } catch (IOException unused4) {
                                        Log.d("XCIPTV_TAG", "---------WebServicesAdapter IOException-----------");
                                        if (httpURLConnection2 != null) {
                                            httpURLConnection2.disconnect();
                                        }
                                        if (bufferedReader2 != null) {
                                        }
                                        return string;
                                    }
                                    bufferedReader2.close();
                                } catch (IOException unused5) {
                                    Log.d("------", "final IOException e");
                                }
                            }
                        }
                    } catch (IOException unused6) {
                        bufferedReader2 = null;
                    } catch (Throwable th5) {
                        th = th5;
                        bufferedReader2 = null;
                        httpURLConnection4 = httpURLConnection2;
                        if (httpURLConnection4 != null) {
                            httpURLConnection4.disconnect();
                        }
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                            break;
                        }
                        throw th;
                    }
                    break;
                } catch (IOException unused7) {
                    httpURLConnection2 = null;
                    bufferedReader2 = null;
                } catch (Throwable th6) {
                    th = th6;
                    bufferedReader2 = null;
                    if (httpURLConnection4 != null) {
                        httpURLConnection4.disconnect();
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                        break;
                    }
                    throw th;
                }
                return string;
        }
    }

    public CharSequence J(Preference preference) {
        switch (this.f3116G) {
            case 5:
                EditTextPreference editTextPreference = (EditTextPreference) preference;
                editTextPreference.getClass();
                if (TextUtils.isEmpty(null)) {
                    return editTextPreference.f9550G.getString(R.string.not_set);
                }
                return null;
            default:
                ListPreference listPreference = (ListPreference) preference;
                listPreference.getClass();
                if (TextUtils.isEmpty(null)) {
                    return listPreference.f9550G.getString(R.string.not_set);
                }
                return null;
        }
    }

    public boolean K(C3136t c3136t) {
        switch (this.f3116G) {
            case 3:
                String str = c3136t.f27041o;
                return Objects.equals(str, "text/x-ssa") || Objects.equals(str, "text/vtt") || Objects.equals(str, "application/x-mp4-vtt") || Objects.equals(str, MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP) || Objects.equals(str, "application/x-quicktime-tx3g") || Objects.equals(str, "application/pgs") || Objects.equals(str, "application/vobsub") || Objects.equals(str, "application/dvbsubs") || Objects.equals(str, "application/ttml+xml");
            default:
                return false;
        }
    }

    public /* bridge */ /* synthetic */ boolean Q(Activity activity, Configuration configuration) {
        return false;
    }

    public Intent R(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("app_package", activity.getPackageName());
        intent.putExtra("app_uid", activity.getApplicationInfo().uid);
        return intent;
    }

    public /* bridge */ /* synthetic */ int S(Context context, TelephonyManager telephonyManager) {
        return 3;
    }

    public /* bridge */ /* synthetic */ boolean U(Context context) {
        return false;
    }

    public /* bridge */ /* synthetic */ int V(AudioManager audioManager) {
        return 0;
    }

    public int X(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
    }

    @Override // S3.b
    public int d(Context context, String str, boolean z7) {
        return S3.c.d(context, str, z7);
    }

    @Override // F2.F
    public void e(MediaExtractor mediaExtractor, Object obj) throws IOException {
        mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // com.google.android.gms.internal.ads.N
    public void f() {
        switch (this.f3116G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.N
    public void g(Y y7) {
        switch (this.f3116G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return;
        }
    }

    @Override // p147s6.a
    public Object get() {
        int i8 = 1;
        int i9 = this.f3116G;
        switch (i9) {
            case 0:
                return new p119p2.b(Executors.newSingleThreadExecutor(), i8);
            case 1:
                return "com.google.android.datatransport.events";
            case 2:
                return Integer.valueOf(p012b3.m.f9860J);
            case 3:
                return p012b3.a.f9833f;
            case 4:
                switch (i9) {
                    case 4:
                        return new p028d3.c(1);
                    default:
                        return new p028d3.c(0);
                }
            default:
                switch (i9) {
                    case 4:
                        return new p028d3.c(1);
                    default:
                        return new p028d3.c(0);
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.N
    public InterfaceC1234e0 h(int i8, int i9) {
        switch (this.f3116G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return new com.google.android.gms.internal.ads.I();
        }
    }

    @Override // J2.h
    public void i(J2.j jVar) {
        jVar.j();
    }

    @Override // W0.u
    public void j() {
        switch (this.f3116G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return;
        }
    }

    @Override // I2.a
    public y2.D k(y2.D d6, p173w2.l lVar) {
        P2.b bVar;
        byte[] bArrArray;
        ByteBuffer byteBufferAsReadOnlyBuffer = ((p159u2.e) ((H2.c) d6.get()).f3639G.f3638a.f3656a).f30474d.asReadOnlyBuffer();
        AtomicReference atomicReference = P2.c.f5884a;
        if (byteBufferAsReadOnlyBuffer.isReadOnly() || !byteBufferAsReadOnlyBuffer.hasArray()) {
            bVar = null;
        } else {
            bVar = new P2.b(byteBufferAsReadOnlyBuffer.arrayOffset(), byteBufferAsReadOnlyBuffer.array(), byteBufferAsReadOnlyBuffer.limit(), 0);
        }
        if (bVar != null && bVar.f5882c == 0 && bVar.f5883d == bVar.f5881b.length) {
            bArrArray = byteBufferAsReadOnlyBuffer.array();
        } else {
            ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBufferAsReadOnlyBuffer.asReadOnlyBuffer();
            byte[] bArr = new byte[byteBufferAsReadOnlyBuffer2.limit()];
            byteBufferAsReadOnlyBuffer2.get(bArr);
            bArrArray = bArr;
        }
        return new z(bArrArray);
    }

    @Override // S3.b
    public int l(Context context, String str) {
        return S3.c.a(context, str);
    }

    @Override // Q2.a
    public Object m() {
        return new ArrayList();
    }

    @Override // p173w2.c
    public boolean n(Object obj, File file, p173w2.l lVar) throws Throwable {
        try {
            P2.c.d(((p159u2.e) ((H2.c) ((y2.D) obj).get()).f3639G.f3638a.f3656a).f30474d.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e8) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e8);
            }
            return false;
        }
    }

    @Override // M1.c
    public void o() {
        switch (this.f3116G) {
            case 11:
                break;
            default:
                Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
                break;
        }
    }

    @Override // p173w2.o
    public int p(p173w2.l lVar) {
        return 1;
    }

    @Override // M1.c
    public void q(int i8, Object obj) {
        String str;
        switch (this.f3116G) {
            case 11:
                break;
            default:
                switch (i8) {
                    case 1:
                        str = "RESULT_INSTALL_SUCCESS";
                        break;
                    case 2:
                        str = "RESULT_ALREADY_INSTALLED";
                        break;
                    case 3:
                        str = "RESULT_UNSUPPORTED_ART_VERSION";
                        break;
                    case 4:
                        str = "RESULT_NOT_WRITABLE";
                        break;
                    case 5:
                        str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                        break;
                    case 6:
                        str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                        break;
                    case 7:
                        str = "RESULT_IO_EXCEPTION";
                        break;
                    case 8:
                        str = "RESULT_PARSE_EXCEPTION";
                        break;
                    case 9:
                    default:
                        str = HttpUrl.FRAGMENT_ENCODE_SET;
                        break;
                    case 10:
                        str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                        break;
                    case 11:
                        str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                        break;
                }
                if (i8 == 6 || i8 == 7 || i8 == 8) {
                    Log.e("ProfileInstaller", str, (Throwable) obj);
                } else {
                    Log.d("ProfileInstaller", str);
                }
                break;
        }
    }

    @Override // W0.u
    public void r(W0.F f8) {
        switch (this.f3116G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return;
        }
    }

    @Override // F2.F
    public void s(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // W0.u
    public L t(int i8, int i9) {
        switch (this.f3116G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return new W0.q();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public p126q1.m x(C3136t c3136t) {
        p126q1.m hVar;
        switch (this.f3116G) {
            case 3:
                String str = c3136t.f27041o;
                if (str != null) {
                    byte b8 = -1;
                    switch (str.hashCode()) {
                        case -1351681404:
                            if (str.equals("application/dvbsubs")) {
                                b8 = 0;
                            }
                            break;
                        case -1248334819:
                            if (str.equals("application/pgs")) {
                                b8 = 1;
                            }
                            break;
                        case -1026075066:
                            if (str.equals("application/x-mp4-vtt")) {
                                b8 = 2;
                            }
                            break;
                        case -1004728940:
                            if (str.equals("text/vtt")) {
                                b8 = 3;
                            }
                            break;
                        case 691401887:
                            if (str.equals("application/x-quicktime-tx3g")) {
                                b8 = 4;
                            }
                            break;
                        case 822864842:
                            if (str.equals("text/x-ssa")) {
                                b8 = 5;
                            }
                            break;
                        case 1157994102:
                            if (str.equals("application/vobsub")) {
                                b8 = 6;
                            }
                            break;
                        case 1668750253:
                            if (str.equals(MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP)) {
                                b8 = 7;
                            }
                            break;
                        case 1693976202:
                            if (str.equals("application/ttml+xml")) {
                                b8 = 8;
                            }
                            break;
                    }
                    List list = c3136t.f27044r;
                    switch (b8) {
                        case 0:
                            hVar = new p142s1.h(list);
                            break;
                        case 1:
                            return new p096m2.o(3);
                        case 2:
                            return new W0.C(1);
                        case 3:
                            return new p096m2.e(6, (Object) null);
                        case 4:
                            hVar = new p180x1.a(0, list);
                            break;
                        case 5:
                            hVar = new p158u1.a(list);
                            break;
                        case 6:
                            hVar = new p096m2.i(list);
                            break;
                        case 7:
                            return new p165v1.a();
                        case 8:
                            return new p172w1.e();
                    }
                    return hVar;
                }
                throw new IllegalArgumentException(p148t.a.c("Unsupported MIME type: ", str));
            default:
                throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
        }
    }

    @Override // p120p3.i
    public Object zza(Object obj) {
        switch (this.f3116G) {
            case 14:
                IBinder iBinder = (IBinder) obj;
                int i8 = AbstractBinderC1623lc.f19802G;
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
                return iInterfaceQueryLocalInterface instanceof InterfaceC1675mc ? (InterfaceC1675mc) iInterfaceQueryLocalInterface : new C1571kc(iBinder);
            case 15:
                IBinder iBinder2 = (IBinder) obj;
                if (iBinder2 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
                return iInterfaceQueryLocalInterface2 instanceof C3107u0 ? (C3107u0) iInterfaceQueryLocalInterface2 : new C3107u0(iBinder2, "com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator", 0);
            case 16:
                IBinder iBinder3 = (IBinder) obj;
                int i9 = AbstractBinderC1109be.f18057G;
                if (iBinder3 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface3 = iBinder3.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
                return iInterfaceQueryLocalInterface3 instanceof InterfaceC1160ce ? (InterfaceC1160ce) iInterfaceQueryLocalInterface3 : new C1057ae(iBinder3, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator", 0);
            case 17:
                IBinder iBinder4 = (IBinder) obj;
                int i10 = AbstractBinderC1313fc.f18765G;
                if (iBinder4 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface4 = iBinder4.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
                return iInterfaceQueryLocalInterface4 instanceof InterfaceC1365gc ? (InterfaceC1365gc) iInterfaceQueryLocalInterface4 : new C1261ec(iBinder4, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator", 0);
            case 18:
                IBinder iBinder5 = (IBinder) obj;
                if (iBinder5 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface5 = iBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                return iInterfaceQueryLocalInterface5 instanceof p090l3.G ? (p090l3.G) iInterfaceQueryLocalInterface5 : new p090l3.G(iBinder5);
            case 19:
                IBinder iBinder6 = (IBinder) obj;
                int i11 = Z8.f17730G;
                if (iBinder6 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface6 = iBinder6.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
                return iInterfaceQueryLocalInterface6 instanceof InterfaceC1037a9 ? (InterfaceC1037a9) iInterfaceQueryLocalInterface6 : new Y8(iBinder6);
            default:
                IBinder iBinder7 = (IBinder) obj;
                if (iBinder7 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface7 = iBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                return iInterfaceQueryLocalInterface7 instanceof K ? (K) iInterfaceQueryLocalInterface7 : new K(iBinder7);
        }
    }

    public /* synthetic */ G(int i8) {
        this.f3116G = i8;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ G(int i8, int i9) {
        this(0);
        this.f3116G = i8;
        int i10 = 1;
        if (i8 == 1) {
            this(i10);
            return;
        }
        int i11 = 2;
        if (i8 != 2) {
        } else {
            this(i11);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza, reason: collision with other method in class */
    public void mo0zza(Object obj) {
        switch (this.f3116G) {
            case 0:
                ((InterfaceC1838pj) obj).zza();
                return;
            case 1:
                ((InterfaceC1838pj) obj).zzb();
                return;
            case 2:
                ((InterfaceC1838pj) obj).zzc();
                return;
            case 3:
                ((InterfaceC1838pj) obj).a();
                return;
            case 4:
                ((InterfaceC1838pj) obj).b();
                return;
            case 5:
                ((InterfaceC0779Ij) obj).n();
                return;
            case 6:
                ((p189y3.a) obj).i();
                return;
            case 7:
                ((InterfaceC0868Oj) obj).zzg();
                return;
            case 8:
                ((p105n3.m) obj).v0();
                return;
            case 9:
                ((p105n3.m) obj).u3();
                return;
            case 10:
                ((p105n3.m) obj).Y();
                return;
            case 11:
                ((p105n3.m) obj).O2();
                return;
            case 12:
                ((p105n3.m) obj).k3();
                return;
            case 13:
                O(obj);
                return;
            case 14:
                BinderC1329fs binderC1329fs = (BinderC1329fs) ((InterfaceC0938Tj) obj);
                synchronized (binderC1329fs) {
                    if (binderC1329fs.f18813H.e()) {
                        binderC1329fs.f18813H.d();
                        return;
                    } else {
                        binderC1329fs.f18813H.c();
                        return;
                    }
                }
            case 15:
                return;
            case 16:
                ((C1433hs) obj).x();
                return;
            case 17:
                ((C1535js) obj).x();
                return;
            case 18:
                return;
            case 19:
                ((Gv) obj).a();
                return;
            case 20:
                ((C1433hs) obj).zzr();
                return;
            case 21:
                return;
            case 22:
                ((Gv) obj).i();
                return;
            case 23:
                ((C1433hs) obj).zzc();
                return;
            case 24:
                ((Gv) obj).zzc();
                return;
            case 25:
                return;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                ((Gv) obj).b();
                return;
            case 27:
                ((C1433hs) obj).u();
                return;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                ((C1074av) obj).v0();
                return;
            default:
                ((C1074av) obj).Y();
                return;
        }
    }

    public /* bridge */ /* synthetic */ void T(Context context) {
    }

    public /* bridge */ /* synthetic */ void W(Activity activity) {
    }

    @Override // J2.h
    public void a(J2.j jVar) {
    }

    @Override // W0.InterfaceC0375h
    public long b(long j8) {
        return j8;
    }

    @Override // J2.g
    public void c(Activity activity) {
    }
}
