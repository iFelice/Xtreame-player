package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.os.IBinder;
import android.os.IInterface;
import android.text.TextUtils;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1561kH implements InterfaceC2270y, B, G, InterfaceC1131c0, V1, p120p3.i, InterfaceC2132vH {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19598G;

    public C1561kH() {
        this.f19598G = 0;
    }

    public static final SharedPreferences d(Context context) {
        try {
            return context.getSharedPreferences("google_ads_flags", 0);
        } catch (IllegalStateException e8) {
            p120p3.h.h(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            return null;
        }
    }

    public static final C1862q6 e(Context context, C1758o6 c1758o6) {
        C2222x3 c2222x3 = new C2222x3(context);
        C1862q6 c1862q6 = new C1862q6(c2222x3);
        C1965s6 c1965s6 = new C1965s6(c2222x3, c1758o6, c1862q6);
        C2017t6 c2017t6 = new C2017t6(c2222x3, c1862q6);
        synchronized (c2222x3.f21827H) {
            C1706n6 c1706n6 = new C1706n6((Context) c2222x3.f21829J, p083k3.l.f25980A.f25998r.j(), c1965s6, c2017t6, 0);
            c2222x3.f21828I = c1706n6;
            c1706n6.checkAvailabilityAndConnect();
        }
        return c1862q6;
    }

    public static final void g(C0848Nd c0848Nd, C2246xc c2246xc) {
        File externalStorageDirectory;
        if (((Context) c2246xc.f21882H) == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty((String) c2246xc.f21884J)) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        Context context = (Context) c2246xc.f21882H;
        String str = (String) c2246xc.f21884J;
        String str2 = (String) c2246xc.f21885K;
        Map map = (Map) c2246xc.f21883I;
        c0848Nd.f14915e = context;
        c0848Nd.f14916f = str;
        c0848Nd.f14914d = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        c0848Nd.f14918h = atomicBoolean;
        atomicBoolean.set(((Boolean) AbstractC1708n8.f20073c.l()).booleanValue());
        if (((AtomicBoolean) c0848Nd.f14918h).get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            int i8 = Ly.f14592d;
            c0848Nd.f14919i = new File(new File(externalStorageDirectory, "sdk_csi_data.txt").getPath());
        }
        for (Map.Entry entry : map.entrySet()) {
            ((LinkedHashMap) c0848Nd.f14912b).put((String) entry.getKey(), (String) entry.getValue());
        }
        AbstractC1988se.f20906a.execute(new RunnableC0878Pf(c0848Nd, 9));
        Map map2 = (Map) c0848Nd.f14913c;
        S7 s7 = T7.f16594b;
        map2.put("action", s7);
        ((Map) c0848Nd.f14913c).put("ad_format", s7);
        ((Map) c0848Nd.f14913c).put("e", T7.f16595c);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2270y
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2270y
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.B
    public final long c(long j8) {
        return j8;
    }

    public final Constructor f() {
        switch (this.f19598G) {
            case 3:
                p179x0.b bVar = androidx.media3.decoder.flac.j.f9431a;
                if (Boolean.TRUE.equals(androidx.media3.decoder.flac.j.class.getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                    return androidx.media3.decoder.flac.i.class.asSubclass(L.class).getConstructor(Integer.TYPE);
                }
                return null;
            default:
                return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(L.class).getConstructor(new Class[0]);
        }
    }

    @Override // p120p3.i
    public final Object zza(Object obj) {
        switch (this.f19598G) {
            case 16:
                IBinder iBinder = (IBinder) obj;
                int i8 = C5.f12583G;
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
                return iInterfaceQueryLocalInterface instanceof D5 ? (D5) iInterfaceQueryLocalInterface : new B5(iBinder, "com.google.android.gms.ads.clearcut.IClearcut", 0);
            default:
                IBinder iBinder2 = (IBinder) obj;
                if (iBinder2 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
                return iInterfaceQueryLocalInterface2 instanceof G8 ? (G8) iInterfaceQueryLocalInterface2 : new G8(iBinder2, "com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy", 0);
        }
    }

    public /* synthetic */ C1561kH(int i8) {
        this.f19598G = i8;
    }

    public C1561kH(Object obj) {
        this.f19598G = 8;
    }

    public C1561kH(int[] iArr) {
        this.f19598G = 9;
        if (iArr != null) {
            int length = Arrays.copyOf(iArr, iArr.length).length;
        }
    }
}
