package A2;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class j implements Q2.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final MessageDigest f633G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Q2.e f634H = new Q2.e();

    public j(MessageDigest messageDigest) {
        this.f633G = messageDigest;
    }

    @Override // Q2.b
    public final Q2.e c() {
        return this.f634H;
    }
}
