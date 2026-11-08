package p072j0;

import E1.C0188x;
import E1.RunnableC0187w;
import android.media.VolumeProvider;

/* JADX INFO: loaded from: classes.dex */
public final class h extends VolumeProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f25668a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(l lVar, int i8, int i9, int i10, String str) {
        super(i8, i9, i10, str);
        this.f25668a = lVar;
    }

    @Override // android.media.VolumeProvider
    public final void onAdjustVolume(int i8) {
        C0188x c0188x = (C0188x) this.f25668a;
        c0188x.f2813g.f2816c.f2597n.post(new RunnableC0187w(c0188x, i8, 1));
    }

    @Override // android.media.VolumeProvider
    public final void onSetVolumeTo(int i8) {
        C0188x c0188x = (C0188x) this.f25668a;
        c0188x.f2813g.f2816c.f2597n.post(new RunnableC0187w(c0188x, i8, 0));
    }
}
