package L2;

/* JADX INFO: loaded from: classes.dex */
public final class b implements d, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f4657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile c f4658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile c f4659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4660e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4661f = 3;

    public b(Object obj, d dVar) {
        this.f4656a = obj;
        this.f4657b = dVar;
    }

    @Override // L2.d, L2.c
    public final boolean a() {
        boolean z7;
        synchronized (this.f4656a) {
            try {
                z7 = this.f4658c.a() || this.f4659d.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // L2.d
    public final boolean b(c cVar) {
        boolean z7;
        synchronized (this.f4656a) {
            d dVar = this.f4657b;
            z7 = dVar == null || dVar.b(this);
        }
        return z7;
    }

    @Override // L2.d
    public final boolean c(c cVar) {
        boolean z7;
        synchronized (this.f4656a) {
            d dVar = this.f4657b;
            z7 = (dVar == null || dVar.c(this)) && cVar.equals(this.f4658c);
        }
        return z7;
    }

    @Override // L2.c
    public final void clear() {
        synchronized (this.f4656a) {
            try {
                this.f4660e = 3;
                this.f4658c.clear();
                if (this.f4661f != 3) {
                    this.f4661f = 3;
                    this.f4659d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // L2.c
    public final boolean d(c cVar) {
        if (!(cVar instanceof b)) {
            return false;
        }
        b bVar = (b) cVar;
        return this.f4658c.d(bVar.f4658c) && this.f4659d.d(bVar.f4659d);
    }

    @Override // L2.d
    public final void e(c cVar) {
        synchronized (this.f4656a) {
            try {
                if (cVar.equals(this.f4658c)) {
                    this.f4660e = 4;
                } else if (cVar.equals(this.f4659d)) {
                    this.f4661f = 4;
                }
                d dVar = this.f4657b;
                if (dVar != null) {
                    dVar.e(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // L2.c
    public final boolean f() {
        boolean z7;
        synchronized (this.f4656a) {
            try {
                z7 = this.f4660e == 3 && this.f4661f == 3;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // L2.c
    public final void g() {
        synchronized (this.f4656a) {
            try {
                if (this.f4660e != 1) {
                    this.f4660e = 1;
                    this.f4658c.g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // L2.d
    public final d getRoot() {
        d root;
        synchronized (this.f4656a) {
            try {
                d dVar = this.f4657b;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // L2.d
    public final void h(c cVar) {
        synchronized (this.f4656a) {
            try {
                if (cVar.equals(this.f4659d)) {
                    this.f4661f = 5;
                    d dVar = this.f4657b;
                    if (dVar != null) {
                        dVar.h(this);
                    }
                    return;
                }
                this.f4660e = 5;
                if (this.f4661f != 1) {
                    this.f4661f = 1;
                    this.f4659d.g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    @Override // L2.d
    public final boolean i(c cVar) {
        int i8;
        boolean z7;
        synchronized (this.f4656a) {
            d dVar = this.f4657b;
            if (dVar != null && !dVar.i(this)) {
                z7 = false;
            } else if (this.f4660e != 5) {
                if (cVar.equals(this.f4658c)) {
                    z7 = true;
                } else {
                    z7 = false;
                }
            } else if (cVar.equals(this.f4659d) && ((i8 = this.f4661f) == 4 || i8 == 5)) {
                z7 = true;
            } else {
                z7 = false;
            }
        }
        return z7;
    }

    @Override // L2.c
    public final boolean isComplete() {
        boolean z7;
        synchronized (this.f4656a) {
            try {
                z7 = this.f4660e == 4 || this.f4661f == 4;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // L2.c
    public final boolean isRunning() {
        boolean z7;
        synchronized (this.f4656a) {
            try {
                z7 = true;
                if (this.f4660e != 1 && this.f4661f != 1) {
                    z7 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // L2.c
    public final void pause() {
        synchronized (this.f4656a) {
            try {
                if (this.f4660e == 1) {
                    this.f4660e = 2;
                    this.f4658c.pause();
                }
                if (this.f4661f == 1) {
                    this.f4661f = 2;
                    this.f4659d.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
