package p072j0;

import android.media.VolumeProvider;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f25673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public k f25674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public VolumeProvider f25675f;

    public l(int i8, String str, int i9, int i10) {
        this.f25670a = i8;
        this.f25671b = i9;
        this.f25673d = i10;
        this.f25672c = str;
    }

    public final VolumeProvider a() {
        if (this.f25675f == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f25675f = new h(this, this.f25670a, this.f25671b, this.f25673d, this.f25672c);
            } else {
                this.f25675f = new i(this, this.f25670a, this.f25671b, this.f25673d);
            }
        }
        return this.f25675f;
    }
}
