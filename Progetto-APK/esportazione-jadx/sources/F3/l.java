package F3;

import C3.p;
import C3.r;
import D3.C0157a;
import D3.C0158b;
import D3.C0163g;
import E1.e0;
import E3.t;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.internal.cast.AbstractC2513x;
import com.google.android.gms.internal.cast.BinderC2486q;
import java.util.ArrayList;
import java.util.List;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final H3.b f3223v = new H3.b("MediaSessionManager", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0158b f3225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BinderC2486q f3226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0163g f3227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final E3.g f3228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ComponentName f3229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ComponentName f3230g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e0 f3231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e0 f3232i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h f3233j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final X3.d f3234k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p000a.f f3235l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final k f3236m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public E3.j f3237n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CastDevice f3238o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MediaSessionCompat f3239p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3240q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f3241r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f3242s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f3243t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f3244u;

    public l(Context context, C0158b c0158b, BinderC2486q binderC2486q) {
        C0163g c0163g;
        E3.g gVar;
        this.f3224a = context;
        this.f3225b = c0158b;
        this.f3226c = binderC2486q;
        H3.b bVar = C0157a.f2336k;
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C0157a c0157a = C0157a.f2338m;
        h hVar = null;
        if (c0157a != null) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            c0163g = c0157a.f2340b;
        } else {
            c0163g = null;
        }
        this.f3227d = c0163g;
        E3.b bVar2 = c0158b.f2357L;
        this.f3228e = bVar2 == null ? null : bVar2.f2834J;
        this.f3236m = new k(this);
        String str = bVar2 == null ? null : bVar2.f2832H;
        this.f3229f = !TextUtils.isEmpty(str) ? new ComponentName(context, str) : null;
        String str2 = bVar2 == null ? null : bVar2.f2831G;
        this.f3230g = !TextUtils.isEmpty(str2) ? new ComponentName(context, str2) : null;
        e0 e0Var = new e0(context);
        this.f3231h = e0Var;
        e0Var.f2728h = new i(this, 0);
        e0 e0Var2 = new e0(context);
        this.f3232i = e0Var2;
        e0Var2.f2728h = new i(this, 1);
        this.f3234k = new X3.d(Looper.getMainLooper(), 1);
        H3.b bVar3 = h.f3197u;
        E3.b bVar4 = c0158b.f2357L;
        if (bVar4 != null && (gVar = bVar4.f2834J) != null) {
            t tVar = gVar.f2898l0;
            if (tVar == null) {
                hVar = new h(context);
            } else {
                ArrayList arrayListA = m.a(tVar);
                int[] iArrB = m.b(tVar);
                int size = arrayListA == null ? 0 : arrayListA.size();
                H3.b bVar5 = h.f3197u;
                if (arrayListA == null || arrayListA.isEmpty()) {
                    Log.e(bVar5.f3679a, bVar5.c(E3.f.class.getSimpleName().concat(" doesn't provide any action."), new Object[0]));
                } else if (arrayListA.size() > 5) {
                    Log.e(bVar5.f3679a, bVar5.c(E3.f.class.getSimpleName().concat(" provides more than 5 actions."), new Object[0]));
                } else if (iArrB == null || (iArrB.length) == 0) {
                    Log.e(bVar5.f3679a, bVar5.c(E3.f.class.getSimpleName().concat(" doesn't provide any actions for compact view."), new Object[0]));
                } else {
                    for (int i8 : iArrB) {
                        if (i8 < 0 || i8 >= size) {
                            Log.e(bVar5.f3679a, bVar5.c(E3.f.class.getSimpleName().concat("provides a compact view action whose index is out of bounds."), new Object[0]));
                        }
                    }
                    hVar = new h(context);
                }
            }
        }
        this.f3233j = hVar;
        this.f3235l = new p000a.f(this, 26);
    }

    public final void a(E3.j jVar, CastDevice castDevice) {
        ComponentName componentName;
        C0158b c0158b = this.f3225b;
        E3.b bVar = c0158b == null ? null : c0158b.f2357L;
        if (this.f3240q || c0158b == null || bVar == null || this.f3228e == null || jVar == null || castDevice == null || (componentName = this.f3230g) == null) {
            f3223v.b("skip attaching media session", new Object[0]);
            return;
        }
        this.f3237n = jVar;
        com.bumptech.glide.c.d("Must be called from the main thread.");
        k kVar = this.f3236m;
        if (kVar != null) {
            jVar.f2910i.add(kVar);
        }
        this.f3238o = castDevice;
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        int i8 = AbstractC2513x.f22816a;
        Context context = this.f3224a;
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, i8);
        if (bVar.f2836L) {
            MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, "CastMediaSession", componentName, broadcast);
            this.f3239p = mediaSessionCompat;
            j(0, null);
            CastDevice castDevice2 = this.f3238o;
            if (castDevice2 != null && !TextUtils.isEmpty(castDevice2.f11681J)) {
                mediaSessionCompat.setMetadata(new MediaMetadataCompat.Builder().putString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST, context.getResources().getString(R.string.cast_casting_to_device, this.f3238o.f11681J)).build());
            }
            mediaSessionCompat.setCallback(new j(this));
            mediaSessionCompat.setActive(true);
            this.f3226c.j0(mediaSessionCompat);
        }
        this.f3240q = true;
        b();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0091  */
    public final void b() {
        MediaInfo mediaInfoC;
        C3.l lVar;
        boolean z7;
        boolean z8;
        p pVarB;
        MediaInfo mediaInfo;
        E3.j jVar = this.f3237n;
        if (jVar == null) {
            return;
        }
        int iP = jVar.p();
        MediaInfo mediaInfoC2 = jVar.c();
        if (jVar.j() && (pVarB = jVar.b()) != null && (mediaInfo = pVarB.f1557G) != null) {
            mediaInfoC2 = mediaInfo;
        }
        j(iP, mediaInfoC2);
        if (!jVar.g()) {
            h();
            i();
            return;
        }
        if (iP != 0) {
            h hVar = this.f3233j;
            if (hVar != null) {
                f3223v.b("Update media notification.", new Object[0]);
                CastDevice castDevice = this.f3238o;
                E3.j jVar2 = this.f3237n;
                MediaSessionCompat mediaSessionCompat = this.f3239p;
                if (castDevice != null && jVar2 != null && mediaSessionCompat != null && (mediaInfoC = jVar2.c()) != null && (lVar = mediaInfoC.f11706J) != null) {
                    r rVarD = jVar2.d();
                    if (rVarD == null) {
                        z7 = false;
                        z8 = false;
                    } else {
                        int i8 = rVarD.f1585V;
                        if (i8 == 1 || i8 == 2 || i8 == 3) {
                            z7 = true;
                            z8 = true;
                        } else {
                            Integer num = (Integer) rVarD.f1593d0.get(rVarD.f1572I);
                            if (num != null) {
                                z8 = num.intValue() > 0;
                                z7 = num.intValue() < rVarD.f1586W.size() + (-1);
                            } else {
                                z7 = false;
                                z8 = false;
                            }
                        }
                    }
                    boolean z9 = jVar2.e() == 2;
                    String strI = lVar.i("com.google.android.gms.cast.metadata.TITLE");
                    MediaSessionCompat.Token sessionToken = mediaSessionCompat.getSessionToken();
                    int i9 = mediaInfoC.f11704H;
                    String str = castDevice.f11681J;
                    g gVar = new g(z9, i9, strI, str, sessionToken, z7, z8);
                    g gVar2 = hVar.f3208k;
                    if (gVar2 == null || z9 != gVar2.f3191b || i9 != gVar2.f3192c || !H3.a.e(strI, gVar2.f3193d) || !H3.a.e(str, gVar2.f3194e) || z7 != gVar2.f3195f || z8 != gVar2.f3196g) {
                        hVar.f3208k = gVar;
                        hVar.b();
                    }
                    List list = lVar.f1538G;
                    p096m2.e eVar = new p096m2.e(list != null && !list.isEmpty() ? (L3.a) list.get(0) : null);
                    p096m2.e eVar2 = hVar.f3209l;
                    if (eVar2 == null || !H3.a.e((Uri) eVar.f27215H, (Uri) eVar2.f27215H)) {
                        p096m2.c cVar = new p096m2.c(hVar, eVar, 15);
                        e0 e0Var = hVar.f3206i;
                        e0Var.f2728h = cVar;
                        e0Var.b((Uri) eVar.f27215H);
                    }
                }
            }
            if (jVar.j()) {
                return;
            }
            g(true);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
    
        if (r12.intValue() < (r10.f1586W.size() - 1)) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b2, code lost:
    
        if (r10.intValue() > 0) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long c(int r10, android.os.Bundle r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: F3.l.c(int, android.os.Bundle, java.lang.String):long");
    }

    public final Uri d(C3.l lVar) {
        E3.b bVar = this.f3225b.f2357L;
        if (bVar != null) {
            bVar.i();
        }
        List list = lVar.f1538G;
        L3.a aVar = list != null && !list.isEmpty() ? (L3.a) list.get(0) : null;
        if (aVar == null) {
            return null;
        }
        return aVar.f4700H;
    }

    public final void e(Bitmap bitmap, int i8) {
        MediaSessionCompat mediaSessionCompat = this.f3239p;
        if (mediaSessionCompat == null) {
            return;
        }
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            bitmap.eraseColor(0);
        }
        MediaSessionCompat mediaSessionCompat2 = this.f3239p;
        MediaMetadataCompat metadata = mediaSessionCompat2 == null ? null : mediaSessionCompat2.getController().getMetadata();
        mediaSessionCompat.setMetadata((metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata)).putBitmap(i8 == 0 ? MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON : MediaMetadataCompat.METADATA_KEY_ALBUM_ART, bitmap).build());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x0038  */
    public final void f(PlaybackStateCompat.Builder builder, String str, E3.e eVar) {
        byte b8;
        PlaybackStateCompat.CustomAction customActionBuild;
        long j8;
        int i8;
        int i9;
        long j9;
        int i10;
        int i11;
        switch (str) {
            case "com.google.android.gms.cast.framework.action.REWIND":
                b8 = 1;
                break;
            case "com.google.android.gms.cast.framework.action.STOP_CASTING":
                b8 = 2;
                break;
            case "com.google.android.gms.cast.framework.action.DISCONNECT":
                b8 = 3;
                break;
            case "com.google.android.gms.cast.framework.action.FORWARD":
                b8 = 0;
                break;
            default:
                b8 = -1;
                break;
        }
        Context context = this.f3224a;
        E3.g gVar = this.f3228e;
        if (b8 == 0) {
            if (this.f3241r == null && gVar != null) {
                H3.b bVar = m.f3245a;
                long j10 = gVar.f2869I;
                if (j10 == 10000) {
                    i8 = gVar.f2892f0;
                    j8 = 30000;
                } else {
                    j8 = 30000;
                    i8 = j10 != 30000 ? gVar.f2891e0 : gVar.f2893g0;
                }
                if (j10 == 10000) {
                    i9 = gVar.f2878R;
                } else {
                    i9 = j10 != j8 ? gVar.f2877Q : gVar.f2879S;
                }
                this.f3241r = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_FORWARD, context.getResources().getString(i8), i9).build();
            }
            customActionBuild = this.f3241r;
        } else if (b8 == 1) {
            if (this.f3242s == null && gVar != null) {
                H3.b bVar2 = m.f3245a;
                long j11 = gVar.f2869I;
                if (j11 == 10000) {
                    i10 = gVar.f2895i0;
                    j9 = 30000;
                } else {
                    j9 = 30000;
                    i10 = j11 != 30000 ? gVar.f2894h0 : gVar.f2896j0;
                }
                if (j11 == 10000) {
                    i11 = gVar.f2881U;
                } else {
                    i11 = j11 != j9 ? gVar.f2880T : gVar.f2882V;
                }
                this.f3242s = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_REWIND, context.getResources().getString(i10), i11).build();
            }
            customActionBuild = this.f3242s;
        } else if (b8 == 2) {
            if (this.f3243t == null && gVar != null) {
                this.f3243t = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_STOP_CASTING, context.getResources().getString(gVar.f2897k0), gVar.f2883W).build();
            }
            customActionBuild = this.f3243t;
        } else if (b8 != 3) {
            customActionBuild = eVar != null ? new PlaybackStateCompat.CustomAction.Builder(str, eVar.f2855I, eVar.f2854H).build() : null;
        } else {
            if (this.f3244u == null && gVar != null) {
                this.f3244u = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_DISCONNECT, context.getResources().getString(gVar.f2897k0), gVar.f2883W).build();
            }
            customActionBuild = this.f3244u;
        }
        if (customActionBuild != null) {
            builder.addCustomAction(customActionBuild);
        }
    }

    public final void g(boolean z7) {
        if (this.f3225b.f2358M) {
            X3.d dVar = this.f3234k;
            p000a.f fVar = this.f3235l;
            if (fVar != null) {
                dVar.removeCallbacks(fVar);
            }
            Context context = this.f3224a;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            try {
                context.startService(intent);
            } catch (IllegalStateException unused) {
                if (z7) {
                    dVar.postDelayed(fVar, 1000L);
                }
            }
        }
    }

    public final void h() {
        h hVar = this.f3233j;
        if (hVar != null) {
            f3223v.b("Stopping media notification.", new Object[0]);
            e0 e0Var = hVar.f3206i;
            e0Var.c();
            e0Var.f2728h = null;
            NotificationManager notificationManager = hVar.f3199b;
            if (notificationManager != null) {
                notificationManager.cancel("castMediaNotification", 1);
            }
        }
    }

    public final void i() {
        if (this.f3225b.f2358M) {
            this.f3234k.removeCallbacks(this.f3235l);
            Context context = this.f3224a;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            context.stopService(intent);
        }
    }

    public final void j(int i8, MediaInfo mediaInfo) {
        PlaybackStateCompat playbackStateCompatBuild;
        MediaSessionCompat mediaSessionCompat;
        C3.l lVar;
        PendingIntent activity;
        MediaSessionCompat mediaSessionCompat2 = this.f3239p;
        if (mediaSessionCompat2 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
        E3.j jVar = this.f3237n;
        E3.g gVar = this.f3228e;
        if (jVar == null || this.f3233j == null) {
            playbackStateCompatBuild = builder.build();
        } else {
            builder.setState(i8, (jVar.p() == 0 || jVar.i()) ? 0L : jVar.a(), 1.0f);
            if (i8 == 0) {
                playbackStateCompatBuild = builder.build();
            } else {
                t tVar = gVar != null ? gVar.f2898l0 : null;
                E3.j jVar2 = this.f3237n;
                long jC = (jVar2 == null || jVar2.i() || this.f3237n.m()) ? 0L : 256L;
                if (tVar != null) {
                    ArrayList<E3.e> arrayListA = m.a(tVar);
                    if (arrayListA != null) {
                        for (E3.e eVar : arrayListA) {
                            String str = eVar.f2853G;
                            if (TextUtils.equals(str, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                                jC = c(i8, bundle, str) | jC;
                            } else {
                                f(builder, str, eVar);
                            }
                        }
                    }
                } else if (gVar != null) {
                    for (String str2 : gVar.f2867G) {
                        if (TextUtils.equals(str2, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(str2, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(str2, MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                            jC = c(i8, bundle, str2) | jC;
                        } else {
                            f(builder, str2, null);
                        }
                    }
                }
                playbackStateCompatBuild = builder.setActions(jC).build();
            }
        }
        mediaSessionCompat2.setPlaybackState(playbackStateCompatBuild);
        if (gVar != null && gVar.f2899m0) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
        }
        if (gVar != null && gVar.f2900n0) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
        }
        if (bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS") || bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT")) {
            mediaSessionCompat2.setExtras(bundle);
        }
        if (i8 == 0) {
            mediaSessionCompat2.setMetadata(new MediaMetadataCompat.Builder().build());
            return;
        }
        if (this.f3237n != null) {
            ComponentName componentName = this.f3229f;
            if (componentName == null) {
                activity = null;
            } else {
                Intent intent = new Intent();
                intent.setComponent(componentName);
                activity = PendingIntent.getActivity(this.f3224a, 0, intent, AbstractC2513x.f22816a | 134217728);
            }
            if (activity != null) {
                mediaSessionCompat2.setSessionActivity(activity);
            }
        }
        E3.j jVar3 = this.f3237n;
        if (jVar3 == null || (mediaSessionCompat = this.f3239p) == null || mediaInfo == null || (lVar = mediaInfo.f11706J) == null) {
            return;
        }
        long j8 = jVar3.i() ? 0L : mediaInfo.f11707K;
        String strI = lVar.i("com.google.android.gms.cast.metadata.TITLE");
        String strI2 = lVar.i("com.google.android.gms.cast.metadata.SUBTITLE");
        MediaSessionCompat mediaSessionCompat3 = this.f3239p;
        MediaMetadataCompat metadata = mediaSessionCompat3 == null ? null : mediaSessionCompat3.getController().getMetadata();
        MediaMetadataCompat.Builder builderPutLong = (metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata)).putLong(MediaMetadataCompat.METADATA_KEY_DURATION, j8);
        if (strI != null) {
            builderPutLong.putString(MediaMetadataCompat.METADATA_KEY_TITLE, strI);
            builderPutLong.putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, strI);
        }
        if (strI2 != null) {
            builderPutLong.putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, strI2);
        }
        mediaSessionCompat.setMetadata(builderPutLong.build());
        Uri uriD = d(lVar);
        if (uriD != null) {
            this.f3231h.b(uriD);
        } else {
            e(null, 0);
        }
        Uri uriD2 = d(lVar);
        if (uriD2 != null) {
            this.f3232i.b(uriD2);
        } else {
            e(null, 3);
        }
    }
}
