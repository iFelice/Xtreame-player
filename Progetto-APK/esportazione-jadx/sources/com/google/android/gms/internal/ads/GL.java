package com.google.android.gms.internal.ads;

import D0.C0115e;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class GL {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f13512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f13513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final B0.r f13514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p039f.G f13515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0115e f13516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EL f13517f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public IL f13518g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C1097bH f13519h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f13520i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1102bM f13521j;

    public GL(Context context, C1102bM c1102bM, C1097bH c1097bH, IL il) {
        Context applicationContext = context.getApplicationContext();
        this.f13512a = applicationContext;
        this.f13521j = c1102bM;
        this.f13519h = c1097bH;
        this.f13518g = il;
        int i8 = Et.f13234a;
        Looper looperMyLooper = Looper.myLooper();
        Handler handler = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, null);
        this.f13513b = handler;
        this.f13514c = Et.f13234a >= 23 ? new B0.r(this) : null;
        this.f13515d = new p039f.G(13, this);
        EL el = EL.f12964c;
        String str = Et.f13236c;
        Uri uriFor = ("Amazon".equals(str) || "Xiaomi".equals(str)) ? Settings.Global.getUriFor("external_surround_sound_enabled") : null;
        this.f13516e = uriFor != null ? new C0115e(this, handler, applicationContext.getContentResolver(), uriFor, 1) : null;
    }

    public final void a(AudioDeviceInfo audioDeviceInfo) {
        IL il = this.f13518g;
        if (Objects.equals(audioDeviceInfo, il == null ? null : il.f13878a)) {
            return;
        }
        IL il2 = audioDeviceInfo != null ? new IL(audioDeviceInfo) : null;
        this.f13518g = il2;
        b(EL.b(this.f13512a, this.f13519h, il2));
    }

    public final void b(EL el) {
        XK xk;
        if (!this.f13520i || el.equals(this.f13517f)) {
            return;
        }
        this.f13517f = el;
        C1618lM c1618lM = this.f13521j.f18040a;
        c1618lM.getClass();
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = c1618lM.f19754T;
        if (looper != looperMyLooper) {
            throw new IllegalStateException(A0.O.C("Current looper (", looperMyLooper == null ? "null" : looperMyLooper.getThread().getName(), ") is not the playback looper (", looper == null ? "null" : looper.getThread().getName(), ")"));
        }
        if (el.equals(c1618lM.f19776q)) {
            return;
        }
        c1618lM.f19776q = el;
        C1722nM c1722nM = c1618lM.f19771l;
        if (c1722nM != null) {
            C1774oM c1774oM = c1722nM.f20167a;
            synchronized (c1774oM.f17866a) {
                xk = c1774oM.f17882q;
            }
            if (xk != null) {
                ((C1983sO) xk).d();
            }
        }
    }
}
