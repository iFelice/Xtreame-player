package N4;

import A0.O;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4943G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Runnable f4944H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ e f4945I;

    public /* synthetic */ d(e eVar, int i8) {
        this(eVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
    
        if (r1 == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004a, code lost:
    
        r1 = r1 | java.lang.Thread.interrupted();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004c, code lost:
    
        r10.f4944H.run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0058, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0059, code lost:
    
        N4.e.f4946L.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r10.f4944H, (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0074, code lost:
    
        r10.f4944H = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0076, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            r10 = this;
            r0 = 0
            r1 = 0
        L2:
            N4.e r2 = r10.f4945I     // Catch: java.lang.Throwable -> L54
            java.util.ArrayDeque r2 = r2.f4948H     // Catch: java.lang.Throwable -> L54
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L54
            r3 = 1
            if (r0 != 0) goto L28
            N4.e r0 = r10.f4945I     // Catch: java.lang.Throwable -> L1c
            int r4 = r0.f4949I     // Catch: java.lang.Throwable -> L1c
            r5 = 4
            if (r4 != r5) goto L1e
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L1b
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L1b:
            return
        L1c:
            r0 = move-exception
            goto L77
        L1e:
            long r6 = r0.f4950J     // Catch: java.lang.Throwable -> L1c
            r8 = 1
            long r6 = r6 + r8
            r0.f4950J = r6     // Catch: java.lang.Throwable -> L1c
            r0.f4949I = r5     // Catch: java.lang.Throwable -> L1c
            r0 = 1
        L28:
            N4.e r4 = r10.f4945I     // Catch: java.lang.Throwable -> L1c
            java.util.ArrayDeque r4 = r4.f4948H     // Catch: java.lang.Throwable -> L1c
            java.lang.Object r4 = r4.poll()     // Catch: java.lang.Throwable -> L1c
            java.lang.Runnable r4 = (java.lang.Runnable) r4     // Catch: java.lang.Throwable -> L1c
            r10.f4944H = r4     // Catch: java.lang.Throwable -> L1c
            if (r4 != 0) goto L45
            N4.e r0 = r10.f4945I     // Catch: java.lang.Throwable -> L1c
            r0.f4949I = r3     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L44
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L44:
            return
        L45:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L54
            r1 = r1 | r2
            r2 = 0
            java.lang.Runnable r3 = r10.f4944H     // Catch: java.lang.Throwable -> L56 java.lang.RuntimeException -> L58
            r3.run()     // Catch: java.lang.Throwable -> L56 java.lang.RuntimeException -> L58
        L51:
            r10.f4944H = r2     // Catch: java.lang.Throwable -> L54
            goto L2
        L54:
            r0 = move-exception
            goto L79
        L56:
            r0 = move-exception
            goto L74
        L58:
            r3 = move-exception
            java.util.logging.Logger r4 = N4.e.f4946L     // Catch: java.lang.Throwable -> L56
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L56
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L56
            r6.<init>()     // Catch: java.lang.Throwable -> L56
            java.lang.String r7 = "Exception while executing runnable "
            r6.append(r7)     // Catch: java.lang.Throwable -> L56
            java.lang.Runnable r7 = r10.f4944H     // Catch: java.lang.Throwable -> L56
            r6.append(r7)     // Catch: java.lang.Throwable -> L56
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L56
            r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L56
            goto L51
        L74:
            r10.f4944H = r2     // Catch: java.lang.Throwable -> L54
            throw r0     // Catch: java.lang.Throwable -> L54
        L77:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            throw r0     // Catch: java.lang.Throwable -> L54
        L79:
            if (r1 == 0) goto L82
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L82:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: N4.d.a():void");
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4943G) {
            case 0:
                this.f4944H.run();
                return;
            default:
                try {
                    a();
                    return;
                } catch (Error e8) {
                    synchronized (this.f4945I.f4948H) {
                        this.f4945I.f4949I = 1;
                        throw e8;
                    }
                }
        }
    }

    public final String toString() {
        switch (this.f4943G) {
            case 0:
                return this.f4944H.toString();
            default:
                Runnable runnable = this.f4944H;
                if (runnable != null) {
                    return "SequentialExecutorWorker{running=" + runnable + "}";
                }
                return "SequentialExecutorWorker{state=" + O.N(this.f4945I.f4949I) + "}";
        }
    }

    public d(e eVar, Runnable runnable) {
        this.f4945I = eVar;
        this.f4944H = runnable;
    }

    public d(e eVar) {
        this.f4945I = eVar;
    }
}
