package E1;

import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: renamed from: E1.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0189y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaSessionCompat f2814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C0188x f2815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ A f2816c;

    public C0189y(A a8, MediaSessionCompat mediaSessionCompat) {
        this.f2816c = a8;
        this.f2814a = mediaSessionCompat;
    }

    public final void a() {
        MediaSessionCompat mediaSessionCompat = this.f2814a;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.setPlaybackToLocal(this.f2816c.f2595l.f2750e);
            this.f2815b = null;
        }
    }
}
