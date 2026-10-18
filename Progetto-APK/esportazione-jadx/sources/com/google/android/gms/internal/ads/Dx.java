package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class Dx extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f12906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioManager f12907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f12908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Nx f12909d;

    public Dx(Handler handler, Context context, Nx nx) {
        super(handler);
        this.f12906a = context;
        this.f12907b = (AudioManager) context.getSystemService("audio");
        this.f12909d = nx;
    }

    public final float a() {
        AudioManager audioManager = this.f12907b;
        int streamVolume = audioManager.getStreamVolume(3);
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            return 0.0f;
        }
        float f8 = streamVolume / streamMaxVolume;
        if (f8 > 1.0f) {
            return 1.0f;
        }
        return f8;
    }

    public final void b() {
        float f8 = this.f12908c;
        Nx nx = this.f12909d;
        nx.f15106a = f8;
        if (nx.f15108c == null) {
            nx.f15108c = Hx.f13820c;
        }
        Iterator it = Collections.unmodifiableCollection(nx.f15108c.f13822b).iterator();
        while (it.hasNext()) {
            Px px = ((C2267xx) it.next()).f21959d;
            Cw.L0(px.a(), "setDeviceVolume", Float.valueOf(f8), px.f15520a);
        }
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z7) {
        super.onChange(z7);
        float fA = a();
        if (fA != this.f12908c) {
            this.f12908c = fA;
            b();
        }
    }
}
