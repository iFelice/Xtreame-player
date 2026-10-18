package com.google.ads.interactivemedia.pal;

import J3.f;
import R3.b;
import R3.c;
import android.app.UiModeManager;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.pal.A0;
import com.google.android.gms.internal.pal.AbstractC2670a1;
import com.google.android.gms.internal.pal.AbstractC2864y4;
import com.google.android.gms.internal.pal.BinderC2687c2;
import com.google.android.gms.internal.pal.C2678b1;
import com.google.android.gms.internal.pal.C2679b2;
import com.google.android.gms.internal.pal.C2695d2;
import com.google.android.gms.internal.pal.C2703e2;
import com.google.android.gms.internal.pal.C2719g2;
import com.google.android.gms.internal.pal.G2;
import com.google.android.gms.internal.pal.H2;
import com.google.android.gms.internal.pal.I2;
import com.google.android.gms.internal.pal.InterfaceC2711f2;
import com.google.android.gms.internal.pal.InterfaceC2868z0;
import com.google.android.gms.internal.pal.N2;
import com.google.android.gms.internal.pal.R0;
import com.google.android.gms.internal.pal.R2;
import com.google.android.gms.internal.pal.S0;
import com.google.android.gms.internal.pal.S2;
import com.google.android.gms.internal.pal.T0;
import com.google.android.gms.internal.pal.V0;
import com.google.android.gms.internal.pal.W0;
import com.google.android.gms.internal.pal.X0;
import com.google.android.gms.internal.pal.Z2;
import com.google.protobuf.U2;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p052g4.d;
import p052g4.e;
import p052g4.h;
import p052g4.i;
import p052g4.j;
import p052g4.q;
import p052g4.r;

/* JADX INFO: loaded from: classes.dex */
public final class NonceLoader {
    public static final /* synthetic */ int zza = 0;
    private static final Random zzb = new Random();
    private final Context zzc;
    private final InterfaceC2868z0 zzd;
    private final InterfaceC2868z0 zze;
    private final h zzf;
    private final R0 zzg;
    private final AbstractC2670a1 zzh;
    private final AbstractC2670a1 zzi;
    private final AbstractC2670a1 zzj;
    private final W0 zzk;
    private final zzx zzl;
    private final long zzm;
    private long zzn;
    private final String zzo;

    /* JADX WARN: Code duplicated, block: B:16:0x00a0  */
    public NonceLoader(final Context context, ConsentSettings consentSettings) {
        AbstractC2670a1 x7;
        context.getClass();
        consentSettings.getClass();
        zzaj zzajVar = new zzaj();
        zzai zzaiVar = new zzai();
        String strZzf = zzf();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        final i iVar = new i();
        executorServiceNewSingleThreadExecutor.execute(new Runnable() { // from class: com.google.ads.interactivemedia.pal.zzy
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                i iVar2 = iVar;
                C2679b2 c2679b2 = new C2679b2();
                InterfaceC2711f2 binderC2687c2 = null;
                if (f.f4145b.c(context2, 12800000) == 0) {
                    try {
                        IBinder iBinderZ3 = ((C2719g2) C2695d2.f23775a.getRemoteCreatorInstance(context2)).z3(new b(context2));
                        if (iBinderZ3 != null) {
                            IInterface iInterfaceQueryLocalInterface = iBinderZ3.queryLocalInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                            binderC2687c2 = iInterfaceQueryLocalInterface instanceof InterfaceC2711f2 ? (InterfaceC2711f2) iInterfaceQueryLocalInterface : new C2703e2(iBinderZ3, "com.google.android.gms.ads.adshield.internal.IAdShieldClient", 5);
                        }
                    } catch (c | RemoteException | LinkageError unused) {
                    }
                }
                if (binderC2687c2 == null) {
                    binderC2687c2 = new BinderC2687c2(context2);
                }
                c2679b2.f23731a = binderC2687c2;
                iVar2.b(c2679b2);
            }
        });
        String strZzh = zzh(context);
        zze zzeVar = new zze();
        zzeVar.zzb(zzat.zza);
        zzeVar.zzc(strZzh);
        zzeVar.zza(strZzf);
        zzx zzxVar = new zzx(new zzs(zzeVar.zzd()), zzx.zza);
        Handler handlerZza = zzaj.zza();
        ExecutorService executorServiceNewSingleThreadExecutor2 = Executors.newSingleThreadExecutor();
        r rVar = iVar.f25345a;
        R0 r7 = new R0(handlerZza, executorServiceNewSingleThreadExecutor2, context, rVar, zzxVar);
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        boolean z7 = uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
        if (consentSettings.zza().booleanValue()) {
            Boolean boolZzc = consentSettings.zzc();
            if (boolZzc != null ? boolZzc.booleanValue() : z7) {
                x7 = new C2678b1(zzaj.zza(), Executors.newSingleThreadExecutor(), context, zzxVar);
            } else {
                x7 = new X0(zzaj.zza(), Executors.newSingleThreadExecutor());
            }
        } else {
            x7 = new X0(zzaj.zza(), Executors.newSingleThreadExecutor());
        }
        AbstractC2670a1 x8 = (!consentSettings.zza().booleanValue() || consentSettings.zzb().booleanValue()) ? new X0(zzaj.zza(), Executors.newSingleThreadExecutor()) : new S0(zzaj.zza(), Executors.newSingleThreadExecutor(), context, 0);
        AbstractC2670a1 s7 = consentSettings.zza().booleanValue() ? new S0(zzaj.zza(), Executors.newSingleThreadExecutor(), context, 1) : new X0(zzaj.zza(), Executors.newSingleThreadExecutor());
        W0 w7 = new W0(zzaj.zza(), Executors.newSingleThreadExecutor(), A0.b(2L));
        this.zzn = -1L;
        this.zzc = context;
        this.zzd = zzajVar;
        this.zze = zzaiVar;
        this.zzf = rVar;
        this.zzg = r7;
        this.zzh = x7;
        this.zzi = x8;
        this.zzj = s7;
        this.zzk = w7;
        this.zzl = zzxVar;
        this.zzo = strZzf;
        this.zzm = System.currentTimeMillis();
        w7.c();
        r7.c();
        x8.c();
        s7.c();
        x7.c();
        Cw.p(x8.b(), s7.b(), r7.b(), x7.b(), w7.b()).a(new d() { // from class: com.google.ads.interactivemedia.pal.zzad
            @Override // p052g4.d
            public final void onComplete(h hVar) {
                this.zza.zzd(hVar);
            }
        });
    }

    public static /* synthetic */ Map zzb(R2 r7, h hVar, h hVar2, h hVar3, h hVar4, h hVar5) {
        I2 i2A = zze(hVar).a(new H2() { // from class: com.google.ads.interactivemedia.pal.zzaf
            @Override // com.google.android.gms.internal.pal.H2
            public final Object zza(Object obj) {
                T0 t7 = (T0) obj;
                int i8 = NonceLoader.zza;
                String strZza = zzak.ADVERTISING_ID.zza();
                String str = t7.f23656a;
                String strZza2 = zzak.ID_TYPE.zza();
                String strZza3 = zzak.LIMIT_AD_TRACKING.zza();
                String str2 = true != t7.f23658c ? "0" : "1";
                AbstractC2864y4.t(strZza, str);
                String str3 = t7.f23657b;
                AbstractC2864y4.t(strZza2, str3);
                AbstractC2864y4.t(strZza3, str2);
                return Z2.b(3, new Object[]{strZza, str, strZza2, str3, strZza3, str2}, null);
            }
        });
        Z2 z7 = Z2.f23714M;
        r7.b((Map) i2A.c(z7));
        r7.b(((Boolean) zze(hVar).a(new H2() { // from class: com.google.ads.interactivemedia.pal.zzab
            @Override // com.google.android.gms.internal.pal.H2
            public final Object zza(Object obj) {
                char c8;
                T0 t7 = (T0) obj;
                int i8 = NonceLoader.zza;
                boolean z8 = false;
                if (!t7.f23658c) {
                    String str = t7.f23656a;
                    int length = str.length();
                    if (str != "00000000-0000-0000-0000-000000000000") {
                        if (length != 36) {
                            z8 = true;
                            break;
                        }
                        for (int i9 = 0; i9 < length; i9++) {
                            char cCharAt = str.charAt(i9);
                            char cCharAt2 = "00000000-0000-0000-0000-000000000000".charAt(i9);
                            if (cCharAt != cCharAt2 && ((c8 = (char) ((cCharAt | ' ') - 97)) >= 26 || c8 != ((char) ((cCharAt2 | ' ') - 97)))) {
                                z8 = true;
                                break;
                            }
                        }
                    }
                }
                return Boolean.valueOf(z8);
            }
        }).c(Boolean.FALSE)).booleanValue() ? z7 : (S2) zze(hVar2).a(new H2() { // from class: com.google.ads.interactivemedia.pal.zzac
            @Override // com.google.android.gms.internal.pal.H2
            public final Object zza(Object obj) {
                A3.b bVar = (A3.b) obj;
                int i8 = NonceLoader.zza;
                String strZza = zzak.PER_VENDOR_ID.zza();
                String str = bVar.f635a;
                String strZza2 = zzak.PER_VENDOR_ID_SCOPE.zza();
                String strValueOf = String.valueOf(bVar.f636b);
                AbstractC2864y4.t(strZza, str);
                AbstractC2864y4.t(strZza2, strValueOf);
                return Z2.b(2, new Object[]{strZza, str, strZza2, strValueOf}, null);
            }
        }).c(z7));
        r7.b((Map) zze(hVar3).a(new H2() { // from class: com.google.ads.interactivemedia.pal.zzag
            @Override // com.google.android.gms.internal.pal.H2
            public final Object zza(Object obj) {
                String str = (String) obj;
                int i8 = NonceLoader.zza;
                String strZza = zzak.MOBILE_SPAM.zza();
                AbstractC2864y4.t(strZza, str);
                return Z2.b(1, new Object[]{strZza, str}, null);
            }
        }).c(z7));
        r7.b((Map) zze(hVar4).a(new H2() { // from class: com.google.ads.interactivemedia.pal.zzah
            @Override // com.google.android.gms.internal.pal.H2
            public final Object zza(Object obj) {
                String str = (String) obj;
                int i8 = NonceLoader.zza;
                String strZza = zzak.ADS_IDENTITY_TOKEN.zza();
                AbstractC2864y4.t(strZza, str);
                return Z2.b(1, new Object[]{strZza, str}, null);
            }
        }).c(z7));
        return r7.c();
    }

    private static I2 zze(h hVar) {
        return !hVar.h() ? G2.f23533G : (I2) hVar.f();
    }

    private static String zzf() {
        return Integer.toString(zzb.nextInt(com.google.android.gms.common.api.d.API_PRIORITY_OTHER));
    }

    private static String zzg(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            Log.e("NonceGenerator", "Failed to encode the input string.");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    private static String zzh(Context context) {
        return "h.3.2.2/n.android.3.2.2/".concat(String.valueOf(context.getApplicationContext().getPackageName()));
    }

    public h loadNonceManager(final NonceRequest nonceRequest) {
        if (nonceRequest == null) {
            this.zzl.zza(103);
            return Cw.j(NonceLoaderException.zzb(103));
        }
        final String strZzf = zzf();
        final R2 r7 = new R2();
        if (nonceRequest.zzi().length() <= 500) {
            r7.a(zzak.DESCRIPTION_URL.zza(), zzg(nonceRequest.zzi()));
        }
        if (nonceRequest.zzo().length() <= 200) {
            r7.a(zzak.PPID.zza(), zzg(nonceRequest.zzo()));
        }
        if (nonceRequest.zzl().length() > 0 && nonceRequest.zzl().length() <= 200) {
            r7.a(zzak.OMID_VERSION.zza(), zzg(nonceRequest.zzl()));
        }
        if (nonceRequest.zzm().length() <= 200) {
            r7.a(zzak.PLAYER_TYPE.zza(), zzg(nonceRequest.zzm()));
        }
        if (nonceRequest.zzn().length() <= 200) {
            r7.a(zzak.PLAYER_VERSION.zza(), zzg(nonceRequest.zzn()));
        }
        String strL = (nonceRequest.zzj().length() == 0 || nonceRequest.zzj().length() > 200 || nonceRequest.zzk().length() == 0 || nonceRequest.zzk().length() > 200) ? HttpUrl.FRAGMENT_ENCODE_SET : U2.l(nonceRequest.zzj(), MqttTopic.TOPIC_LEVEL_SEPARATOR, nonceRequest.zzk());
        r7.a(zzak.OMID_PARTNER.zza(), zzg(strL));
        TreeSet treeSet = new TreeSet(nonceRequest.zzq());
        if (!strL.isEmpty()) {
            treeSet.add(7);
        }
        String strZza = zzak.API_FRAMEWORKS.zza();
        Iterator it = treeSet.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            if (it.hasNext()) {
                Object next = it.next();
                next.getClass();
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (it.hasNext()) {
                    sb.append((CharSequence) ",");
                    Object next2 = it.next();
                    next2.getClass();
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
            r7.a(strZza, sb.toString());
            Integer numZzg = nonceRequest.zzg();
            if (numZzg != null) {
                String strZza2 = zzak.PLAYER_HEIGHT.zza();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(numZzg);
                r7.a(strZza2, sb2.toString());
            }
            Integer numZzh = nonceRequest.zzh();
            if (numZzh != null) {
                String strZza3 = zzak.PLAYER_WIDTH.zza();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(numZzh);
                r7.a(strZza3, sb3.toString());
            }
            if (numZzg != null && numZzh != null) {
                r7.a(zzak.ORIENTATION.zza(), numZzg.intValue() <= numZzh.intValue() ? "l" : "p");
            }
            Boolean boolZzd = nonceRequest.zzd();
            if (boolZzd != null) {
                r7.a(zzak.PLAY_ACTIVATION.zza(), true != boolZzd.booleanValue() ? "click" : "auto");
            }
            r7.a(zzak.WTA_SUPPORTED.zza(), true != nonceRequest.zzc().booleanValue() ? "0" : "1");
            Boolean boolZze = nonceRequest.zze();
            if (boolZze != null) {
                r7.a(zzak.PLAY_MUTED.zza(), true == boolZze.booleanValue() ? "1" : "0");
            }
            Boolean boolZzb = nonceRequest.zzb();
            if (boolZzb != null) {
                r7.a(zzak.CONTINUOUS_PLAYBACK.zza(), true == boolZzb.booleanValue() ? "2" : "1");
            }
            r7.a(zzak.SESSION_ID.zza(), nonceRequest.zzp());
            final R2 r8 = new R2();
            r8.a(zzak.PAL_VERSION.zza(), zzat.zza);
            r8.a(zzak.SDK_VERSION.zza(), zzh(this.zzc));
            r8.a(zzak.APP_NAME.zza(), this.zzc.getApplicationContext().getPackageName());
            r8.a(zzak.PAGE_CORRELATOR.zza(), this.zzo);
            r8.a(zzak.AD_SPAM_CAPABILITIES.zza(), "3");
            r8.a(zzak.SPAM_CORRELATOR.zza(), strZzf);
            final r rVarB = this.zzi.b();
            final r rVarB2 = this.zzj.b();
            final r rVarB3 = this.zzg.b();
            final r rVarB4 = this.zzh.b();
            r rVarP = Cw.p(rVarB, rVarB2, rVarB3, rVarB4);
            p052g4.b bVar = new p052g4.b() { // from class: com.google.ads.interactivemedia.pal.zzae
                @Override // p052g4.b
                public final Object then(h hVar) {
                    return NonceLoader.zzb(r8, rVarB, rVarB2, rVarB3, rVarB4, hVar);
                }
            };
            q qVar = j.f25346a;
            final r rVarD = rVarP.d(qVar, bVar);
            PlatformSignalCollector platformSignalCollectorZza = nonceRequest.zza();
            h hVarK = platformSignalCollectorZza == null ? Cw.k(Z2.f23714M) : platformSignalCollectorZza.collectSignals(this.zzc, Executors.newSingleThreadExecutor());
            final r rVarB5 = this.zzk.b();
            final long jCurrentTimeMillis = System.currentTimeMillis();
            h[] hVarArr = {rVarD, rVarB5, hVarK};
            final h hVar = hVarK;
            r rVarD2 = Cw.p(hVarArr).d(Executors.newSingleThreadExecutor(), new p052g4.b() { // from class: com.google.ads.interactivemedia.pal.zzz
                @Override // p052g4.b
                public final Object then(h hVar2) {
                    return this.zza.zza(r7, rVarD, hVar, rVarB5, nonceRequest, strZzf, jCurrentTimeMillis, hVar2);
                }
            });
            rVarD2.b(qVar, new e() { // from class: com.google.ads.interactivemedia.pal.zzaa
                @Override // p052g4.e
                public final void onFailure(Exception exc) {
                    this.zza.zzc(exc);
                }
            });
            return rVarD2;
        } catch (IOException e8) {
            throw new AssertionError(e8);
        }
    }

    public void release() {
        this.zzg.f23723c.removeCallbacksAndMessages(null);
        this.zzh.f23723c.removeCallbacksAndMessages(null);
        this.zzi.f23723c.removeCallbacksAndMessages(null);
        this.zzj.f23723c.removeCallbacksAndMessages(null);
        this.zzk.f23723c.removeCallbacksAndMessages(null);
    }

    public final NonceManager zza(R2 r7, h hVar, h hVar2, h hVar3, NonceRequest nonceRequest, String str, long j8, h hVar4) throws NonceLoaderException {
        r7.b((Map) hVar.f());
        if (hVar2.h()) {
            r7.b((Map) hVar2.f());
        }
        V0 v5 = (V0) ((I2) hVar3.f()).b();
        Z2 z2C = r7.c();
        StringBuilder sb = new StringBuilder();
        N2 n2N = z2C.entrySet().n();
        while (n2N.hasNext()) {
            Map.Entry entry = (Map.Entry) n2N.next();
            if (entry.getValue() != null && ((String) entry.getValue()).length() != 0) {
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append((String) entry.getKey());
                sb.append("=");
                sb.append((String) entry.getValue());
            }
        }
        String string = sb.toString();
        v5.getClass();
        try {
            String strEncodeToString = Base64.encodeToString(v5.f23672a.zza(string.getBytes("UTF-8"), new byte[0]), 10);
            Integer numZzf = nonceRequest.zzf();
            if (numZzf != null && strEncodeToString.length() > numZzf.intValue()) {
                Log.e("NonceGenerator", "Nonce length limit crossed.");
                throw NonceLoaderException.zzb(104);
            }
            String strZzh = zzh(this.zzc);
            String str2 = this.zzo;
            zze zzeVar = new zze();
            zzeVar.zzb(zzat.zza);
            zzeVar.zzc(strZzh);
            zzeVar.zza(str2);
            zzax zzaxVar = new zzax(new zzs(zzeVar.zzd()), str);
            int length = strEncodeToString.length();
            zzh zzhVar = new zzh();
            A0 a8 = A0.f23424H;
            zzhVar.zzc(a8);
            zzhVar.zzd(A0.a(j8 - this.zzm));
            zzhVar.zzb(A0.a(System.currentTimeMillis() - this.zzm));
            zzhVar.zzf(a8);
            zzhVar.zze(A0.a(this.zzn - this.zzm));
            zzhVar.zza(length);
            this.zzl.zzb(zzhVar.zzg());
            return new NonceManager(this.zzc, zzaj.zza(), Executors.newSingleThreadExecutor(), this.zzf, zzaxVar, strEncodeToString);
        } catch (UnsupportedEncodingException | IllegalArgumentException | GeneralSecurityException e8) {
            Log.e("NonceGenerator", "Failed to encrypt the string.", e8);
            throw new NonceLoaderException(204, e8);
        }
    }

    public final /* synthetic */ void zzc(Exception exc) {
        if (exc instanceof NonceLoaderException) {
            this.zzl.zza(((NonceLoaderException) exc).zza());
        } else {
            this.zzl.zza(100);
        }
    }

    public final void zzd(h hVar) {
        this.zzn = System.currentTimeMillis();
    }
}
