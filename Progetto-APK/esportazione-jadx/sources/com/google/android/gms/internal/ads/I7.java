package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.app.Application;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import android.view.WindowManager;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import java.io.IOException;
import p039f.AbstractC2987b;
import p113o3.C3157o;

/* JADX INFO: loaded from: classes.dex */
public final class I7 implements InterfaceC1942rk, InterfaceC1195dC, LM {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13852G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f13853H;

    public /* synthetic */ I7(Context context, int i8) {
        this.f13852G = i8;
        this.f13853H = context;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0096 A[Catch: Exception -> 0x00e4, TryCatch #4 {Exception -> 0x00e4, blocks: (B:27:0x0078, B:29:0x007c, B:33:0x0085, B:35:0x008d, B:37:0x00b0, B:36:0x0096), top: B:82:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0140  */
    @Override // com.google.android.gms.internal.ads.LM
    public final MM a(KM km) throws Exception {
        String str;
        MediaCodec mediaCodecCreateByCodecName;
        NM fm;
        int i8;
        Context context;
        int i9 = Et.f13234a;
        int i10 = 0;
        MediaCodec mediaCodec = null;
        dm = null;
        DM dm = null;
        mediaCodec = null;
        if (i9 < 23 || (i9 < 31 && ((context = this.f13853H) == null || i9 < 28 || !context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen")))) {
            try {
                String str2 = km.f14329a.f15375a;
                Trace.beginSection("createCodec:".concat(str2));
                MediaCodec mediaCodecCreateByCodecName2 = MediaCodec.createByCodecName(str2);
                Trace.endSection();
                try {
                    Trace.beginSection("configureCodec");
                    Surface surface = km.f14332d;
                    if (surface == null && km.f14329a.f15382h && i9 >= 35) {
                        i10 = 8;
                    }
                    mediaCodecCreateByCodecName2.configure(km.f14330b, surface, (MediaCrypto) null, i10);
                    Trace.endSection();
                    Trace.beginSection("startCodec");
                    mediaCodecCreateByCodecName2.start();
                    Trace.endSection();
                    return new C1206dN(mediaCodecCreateByCodecName2, km.f14333e);
                } catch (IOException e8) {
                    e = e8;
                    mediaCodec = mediaCodecCreateByCodecName2;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                } catch (RuntimeException e9) {
                    e = e9;
                    mediaCodec = mediaCodecCreateByCodecName2;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException e10) {
                e = e10;
            } catch (RuntimeException e11) {
                e = e11;
            }
        } else {
            int iB = AbstractC2140va.b(km.f14331c.f20383m);
            switch (iB) {
                case CompanionAdSlot.FLUID_SIZE /* -2 */:
                    str = "none";
                    break;
                case -1:
                    str = zzbz.UNKNOWN_CONTENT_TYPE;
                    break;
                case 0:
                    str = "default";
                    break;
                case 1:
                    str = "audio";
                    break;
                case 2:
                    str = "video";
                    break;
                case 3:
                    str = "text";
                    break;
                case 4:
                    str = "image";
                    break;
                case 5:
                    str = "metadata";
                    break;
                default:
                    str = "camera motion";
                    break;
            }
            Zo.e("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type ".concat(str));
            J2.t tVar = new J2.t(iB, 9);
            tVar.f4125H = true;
            PM pm = km.f14329a;
            String str3 = pm.f15375a;
            try {
                Trace.beginSection("createCodec:" + str3);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str3);
                try {
                    if (tVar.f4125H) {
                        C1804p0 c1804p0 = km.f14331c;
                        if (i9 >= 34 && (i9 >= 35 || AbstractC2140va.g(c1804p0.f20383m))) {
                            fm = new Xu(mediaCodecCreateByCodecName, 29);
                            i8 = 4;
                        } else {
                            fm = new FM(mediaCodecCreateByCodecName, new HandlerThread(DM.k(((CM) ((Gz) tVar.f4127J)).f12619G, "ExoPlayer:MediaCodecQueueingThread:")));
                            i8 = 0;
                        }
                    } else {
                        fm = new FM(mediaCodecCreateByCodecName, new HandlerThread(DM.k(((CM) ((Gz) tVar.f4127J)).f12619G, "ExoPlayer:MediaCodecQueueingThread:")));
                        i8 = 0;
                    }
                    DM dm2 = new DM(mediaCodecCreateByCodecName, new HandlerThread(DM.k(((BM) ((Gz) tVar.f4126I)).f12362G, "ExoPlayer:MediaCodecAsyncAdapter:")), fm, km.f14333e);
                    try {
                        Trace.endSection();
                        Surface surface2 = km.f14332d;
                        if (surface2 == null && pm.f15382h && i9 >= 35) {
                            i8 |= 8;
                        }
                        DM.j(dm2, km.f14330b, surface2, i8);
                        return dm2;
                    } catch (Exception e12) {
                        e = e12;
                        dm = dm2;
                        if (dm != null) {
                            dm.zzm();
                        } else if (mediaCodecCreateByCodecName != null) {
                            mediaCodecCreateByCodecName.release();
                        }
                        throw e;
                    }
                } catch (Exception e13) {
                    e = e13;
                }
            } catch (Exception e14) {
                e = e14;
                mediaCodecCreateByCodecName = null;
            }
        }
    }

    public final Object b() {
        G.c cVar = Cw.f12720d;
        if (cVar.f3280H) {
            return Boolean.TRUE;
        }
        Context applicationContext = this.f13853H.getApplicationContext();
        if (applicationContext == null) {
            throw new IllegalArgumentException("Application Context cannot be null");
        }
        if (!cVar.f3280H) {
            cVar.f3280H = true;
            Nx nxA = Nx.a();
            nxA.getClass();
            nxA.f15107b = new Dx(new Handler(), applicationContext, nxA);
            Gx gx = Gx.f13668J;
            boolean z7 = applicationContext instanceof Application;
            if (z7) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(gx);
            }
            Cw.f12723g = (UiModeManager) applicationContext.getSystemService("uimode");
            WindowManager windowManager = Sx.f16559a;
            Sx.f16561c = applicationContext.getResources().getDisplayMetrics().density;
            Sx.f16559a = (WindowManager) applicationContext.getSystemService("window");
            applicationContext.registerReceiver(new p113o3.N(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
            Mx.f14832H.f14833G = applicationContext.getApplicationContext();
            Fx fx = Fx.f13442e;
            if (!fx.f13444b) {
                Jx jx = fx.f13445c;
                jx.getClass();
                if (z7) {
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(jx);
                }
                jx.f14252I = fx;
                jx.f14250G = true;
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                ActivityManager.getMyMemoryState(runningAppProcessInfo);
                boolean z8 = runningAppProcessInfo.importance == 100 || jx.b();
                jx.f14251H = z8;
                jx.a(z8);
                fx.f13446d = jx.f14251H;
                fx.f13444b = true;
            }
        }
        return Boolean.valueOf(cVar.f3280H);
    }

    public final boolean c(Intent intent) {
        com.bumptech.glide.c.i(intent, "Intent can not be null");
        return !this.f13853H.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        int i8 = this.f13852G;
        Context context = this.f13853H;
        switch (i8) {
            case 1:
                ((InterfaceC0674Bj) obj).p(context);
                break;
            case 2:
                ((InterfaceC0674Bj) obj).q(context);
                break;
            default:
                ((InterfaceC0674Bj) obj).m(context);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final /* bridge */ /* synthetic */ void mo3zzb(Object obj) {
        if (((Boolean) AbstractC1604l8.f19721j.l()).booleanValue()) {
            AbstractC2987b.y0(this.f13853H);
        }
    }

    public I7(Context context) {
        this.f13852G = 0;
        com.bumptech.glide.c.i(context, "Context can not be null");
        this.f13853H = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        if (((Boolean) AbstractC1604l8.f19719h.l()).booleanValue() && (th instanceof C3157o)) {
            AbstractC2987b.y0(this.f13853H);
        }
    }
}
