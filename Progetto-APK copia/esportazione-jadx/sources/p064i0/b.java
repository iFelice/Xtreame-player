package p064i0;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntentFilter f25498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BroadcastReceiver f25499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f25500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f25501d;

    public b(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        this.f25498a = intentFilter;
        this.f25499b = broadcastReceiver;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("Receiver{");
        sb.append(this.f25499b);
        sb.append(" filter=");
        sb.append(this.f25498a);
        if (this.f25501d) {
            sb.append(" DEAD");
        }
        sb.append("}");
        return sb.toString();
    }
}
