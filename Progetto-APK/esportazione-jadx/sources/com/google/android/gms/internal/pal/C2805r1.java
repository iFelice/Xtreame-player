package com.google.android.gms.internal.pal;

import O1.C0325y;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.C1075aw;
import com.google.android.gms.internal.ads.C1385gw;
import com.google.android.gms.internal.ads.C2000sq;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.InterfaceC0771Ib;
import com.google.android.gms.internal.ads.InterfaceC2148vi;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2805r1 implements InterfaceC2784o3, InterfaceC2721g4, InterfaceC2148vi {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23993G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f23994H;

    public /* synthetic */ C2805r1(Object obj, int i8) {
        this.f23993G = i8;
        this.f23994H = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], java.lang.Cloneable] */
    @Override // com.google.android.gms.internal.pal.InterfaceC2721g4
    public C2767m2 a(byte[] bArr) throws GeneralSecurityException {
        byte[] bArrN = AbstractC2864y4.N();
        byte[] bArrZ = AbstractC2864y4.z(bArrN, bArr);
        ?? X7 = AbstractC2864y4.X(bArrN);
        byte[] bArrY = AbstractC2864y4.Y(X7, bArr);
        byte[] bArrY2 = AbstractC2864y4.Y(AbstractC2737i4.f23869m, AbstractC2737i4.f23858b);
        C2805r1 c2805r1 = (C2805r1) this.f23994H;
        int iB = c2805r1.b();
        Charset charset = StandardCharsets.UTF_8;
        byte[] bytes = "eae_prk".getBytes(charset);
        byte[] bArr2 = AbstractC2737i4.f23871o;
        return new C2767m2(5, c2805r1.f(iB, c2805r1.g(AbstractC2864y4.Y(bArr2, bArrY2, bytes, bArrZ), null), AbstractC2864y4.Y(AbstractC2737i4.b(2, iB), bArr2, bArrY2, "shared_secret".getBytes(charset), bArrY)), X7);
    }

    public int b() {
        switch (this.f23993G) {
            case 8:
                return Mac.getInstance((String) this.f23994H).getMacLength();
            default:
                return ((Q6) this.f23994H).f23635a.length;
        }
    }

    public Object c() {
        switch (this.f23993G) {
            case 2:
                return ((SharedPreferencesOnSharedPreferenceChangeListenerC2751k2) this.f23994H).f23912e.getString("flag_configuration", "{}");
            default:
                Context context = (Context) this.f23994H;
                C0325y c0325y = AbstractC2759l2.f23924a;
                SharedPreferencesOnSharedPreferenceChangeListenerC2751k2 sharedPreferencesOnSharedPreferenceChangeListenerC2751k2 = C2727h2.f23833d.f23836c;
                if (sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23910c) {
                    return null;
                }
                synchronized (sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23908a) {
                    try {
                        if (sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23910c) {
                            return null;
                        }
                        if (!sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23911d) {
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23911d = true;
                        }
                        Context applicationContext = context.getApplicationContext() == null ? context : context.getApplicationContext();
                        sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23914g = applicationContext;
                        try {
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23913f = Q3.c.a(applicationContext).b(128, sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23914g.getPackageName()).metaData;
                            break;
                        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                        }
                        try {
                            Context contextA = J3.j.a(context);
                            if (contextA != null || (contextA = context.getApplicationContext()) != null) {
                                context = contextA;
                            }
                            C2684c c2684c = C2727h2.f23833d.f23835b;
                            SharedPreferences sharedPreferences = context.getSharedPreferences("google_ads_flags", 0);
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23912e = sharedPreferences;
                            if (sharedPreferences != null) {
                                sharedPreferences.registerOnSharedPreferenceChangeListener(sharedPreferencesOnSharedPreferenceChangeListenerC2751k2);
                            }
                            AbstractC2775n2.f23966a.set(new C2743j2(sharedPreferencesOnSharedPreferenceChangeListenerC2751k2));
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.b();
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23910c = true;
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23911d = false;
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23909b.open();
                            return null;
                        } catch (Throwable th) {
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23911d = false;
                            sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23909b.open();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
        }
    }

    public AtomicReference d(String str) {
        synchronized (this) {
            try {
                if (!((Map) this.f23994H).containsKey(str)) {
                    ((Map) this.f23994H).put(str, new AtomicReference());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (AtomicReference) ((Map) this.f23994H).get(str);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0038  */
    public byte[] e() throws GeneralSecurityException {
        byte b8;
        String str = (String) this.f23994H;
        int iHashCode = str.hashCode();
        if (iHashCode != 984523022) {
            if (iHashCode != 984524074) {
                if (iHashCode == 984525777 && str.equals("HmacSha512")) {
                    b8 = 2;
                } else {
                    b8 = -1;
                }
            } else if (str.equals("HmacSha384")) {
                b8 = 1;
            } else {
                b8 = -1;
            }
        } else if (str.equals("HmacSha256")) {
            b8 = 0;
        } else {
            b8 = -1;
        }
        if (b8 == 0) {
            return AbstractC2737i4.f23862f;
        }
        if (b8 == 1) {
            return AbstractC2737i4.f23863g;
        }
        if (b8 == 2) {
            return AbstractC2737i4.f23864h;
        }
        throw new GeneralSecurityException("Could not determine HPKE KDF ID");
    }

    public byte[] f(int i8, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Mac mac = (Mac) J6.f23570f.a((String) this.f23994H);
        if (i8 > mac.getMacLength() * 255) {
            throw new GeneralSecurityException("size too large");
        }
        byte[] bArr3 = new byte[i8];
        mac.init(new SecretKeySpec(bArr, (String) this.f23994H));
        byte[] bArrDoFinal = new byte[0];
        int i9 = 1;
        int i10 = 0;
        while (true) {
            mac.update(bArrDoFinal);
            mac.update(bArr2);
            mac.update((byte) i9);
            bArrDoFinal = mac.doFinal();
            int length = bArrDoFinal.length;
            int i11 = i10 + length;
            if (i11 >= i8) {
                System.arraycopy(bArrDoFinal, 0, bArr3, i10, i8 - i10);
                return bArr3;
            }
            System.arraycopy(bArrDoFinal, 0, bArr3, i10, length);
            i9++;
            i10 = i11;
        }
    }

    public byte[] g(byte[] bArr, byte[] bArr2) throws InvalidKeyException {
        Mac mac = (Mac) J6.f23570f.a((String) this.f23994H);
        if (bArr2 == null || bArr2.length == 0) {
            mac.init(new SecretKeySpec(new byte[mac.getMacLength()], (String) this.f23994H));
        } else {
            mac.init(new SecretKeySpec(bArr2, (String) this.f23994H));
        }
        return mac.doFinal(bArr);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2148vi
    /* JADX INFO: renamed from: zza */
    public p090l3.B0 mo9zza() throws C1075aw {
        int i8 = this.f23993G;
        Object obj = this.f23994H;
        switch (i8) {
            case 0:
                return ((InterfaceC0715Ef) obj).zzq();
            case 1:
                C1385gw c1385gw = (C1385gw) obj;
                c1385gw.getClass();
                try {
                    return c1385gw.f19025a.zzh();
                } catch (Throwable th) {
                    throw new C1075aw(th);
                }
            default:
                try {
                    return ((InterfaceC0771Ib) ((C2000sq) obj).f20994b).zze();
                } catch (RemoteException e8) {
                    throw new C1075aw(e8);
                }
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2721g4
    public byte[] zzb() throws GeneralSecurityException {
        if (Arrays.equals(((C2805r1) this.f23994H).e(), AbstractC2737i4.f23862f)) {
            return AbstractC2737i4.f23858b;
        }
        throw new GeneralSecurityException("Could not determine HPKE KEM ID");
    }

    public C2805r1() {
        this.f23993G = 1;
        this.f23994H = new HashMap();
    }

    public C2805r1(ConnectivityManager connectivityManager) {
        this.f23993G = 0;
        if (connectivityManager == null || Build.VERSION.SDK_INT < 24) {
            return;
        }
        try {
            connectivityManager.registerDefaultNetworkCallback(new p082k2.h(this, 5));
        } catch (RuntimeException unused) {
            synchronized (C2805r1.class) {
                this.f23994H = null;
            }
        }
    }
}
