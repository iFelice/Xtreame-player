package p081k1;

import java.util.Collections;
import java.util.List;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f25908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f25909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f25910c;

    public d(long j8, long j9, List list) {
        this.f25908a = j8;
        this.f25909b = j9;
        this.f25910c = Collections.unmodifiableList(list);
    }

    @Override // p081k1.b
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 SpliceInsertCommand { programSplicePts=");
        sb.append(this.f25908a);
        sb.append(", programSplicePlaybackPositionUs= ");
        return r.i(sb, this.f25909b, " }");
    }
}
