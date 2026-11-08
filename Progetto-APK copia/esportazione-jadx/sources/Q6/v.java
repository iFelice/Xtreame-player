package Q6;

import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class v implements D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final l f6085G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j f6086H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public y f6087I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f6088J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f6089K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f6090L;

    public v(l lVar) {
        q0.h(lVar, "upstream");
        this.f6085G = lVar;
        j jVarA = lVar.a();
        this.f6086H = jVarA;
        y yVar = jVarA.f6063G;
        this.f6087I = yVar;
        this.f6088J = yVar != null ? yVar.f6098b : -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6089K = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (r3 == r5.f6098b) goto L15;
     */
    @Override // Q6.D
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long read(Q6.j r9, long r10) {
        /*
            r8 = this;
            java.lang.String r0 = "sink"
            z4.q0.h(r9, r0)
            r0 = 0
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 < 0) goto L76
            boolean r3 = r8.f6089K
            r3 = r3 ^ 1
            if (r3 == 0) goto L6a
            Q6.y r3 = r8.f6087I
            Q6.j r4 = r8.f6086H
            if (r3 == 0) goto L31
            Q6.y r5 = r4.f6063G
            if (r3 != r5) goto L25
            int r3 = r8.f6088J
            z4.q0.e(r5)
            int r5 = r5.f6098b
            if (r3 != r5) goto L25
            goto L31
        L25:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "Peek source is invalid because upstream source was used"
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L31:
            if (r2 != 0) goto L34
            return r0
        L34:
            long r0 = r8.f6090L
            r2 = 1
            long r0 = r0 + r2
            Q6.l r2 = r8.f6085G
            boolean r0 = r2.I(r0)
            if (r0 != 0) goto L44
            r9 = -1
            return r9
        L44:
            Q6.y r0 = r8.f6087I
            if (r0 != 0) goto L52
            Q6.y r0 = r4.f6063G
            if (r0 == 0) goto L52
            r8.f6087I = r0
            int r0 = r0.f6098b
            r8.f6088J = r0
        L52:
            long r0 = r4.f6064H
            long r2 = r8.f6090L
            long r0 = r0 - r2
            long r10 = java.lang.Math.min(r10, r0)
            Q6.j r2 = r8.f6086H
            long r3 = r8.f6090L
            r5 = r9
            r6 = r10
            r2.O(r3, r5, r6)
            long r0 = r8.f6090L
            long r0 = r0 + r10
            r8.f6090L = r0
            return r10
        L6a:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "closed"
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L76:
            java.lang.String r9 = "byteCount < 0: "
            java.lang.String r9 = A0.O.z(r9, r10)
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r10.<init>(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: Q6.v.read(Q6.j, long):long");
    }

    @Override // Q6.D
    public final G timeout() {
        return this.f6085G.timeout();
    }
}
