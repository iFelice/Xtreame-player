package B0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: renamed from: B0.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0039b extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L f910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.q f911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0041c f912c;

    public C0039b(C0041c c0041c, p117p0.I i8, L l4) {
        this.f912c = c0041c;
        this.f911b = i8;
        this.f910a = l4;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            ((p117p0.I) this.f911b).c(new p000a.b(this, 9));
        }
    }
}
