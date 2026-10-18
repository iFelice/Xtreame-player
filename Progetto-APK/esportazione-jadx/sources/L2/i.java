package L2;

import A0.O;

/* JADX INFO: loaded from: classes.dex */
public final class i implements d, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f4692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile c f4694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile c f4695d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4696e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4697f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4698g;

    public i(Object obj, d dVar) {
        this.f4693b = obj;
        this.f4692a = dVar;
    }

    @Override // L2.d, L2.c
    public final boolean a() {
        boolean z7;
        synchronized (this.f4693b) {
            try {
                z7 = this.f4695d.a() || this.f4694c.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // L2.d
    public final boolean b(c cVar) {
        boolean z7;
        synchronized (this.f4693b) {
            try {
                d dVar = this.f4692a;
                z7 = (dVar == null || dVar.b(this)) && (cVar.equals(this.f4694c) || this.f4696e != 4);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // L2.d
    public final boolean c(c cVar) {
        boolean z7;
        synchronized (this.f4693b) {
            try {
                d dVar = this.f4692a;
                z7 = (dVar == null || dVar.c(this)) && cVar.equals(this.f4694c) && this.f4696e != 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // L2.c
    public final void clear() {
        synchronized (this.f4693b) {
            this.f4698g = false;
            this.f4696e = 3;
            this.f4697f = 3;
            this.f4695d.clear();
            this.f4694c.clear();
        }
    }

    @Override // L2.c
    public final boolean d(c cVar) {
        if (!(cVar instanceof i)) {
            return false;
        }
        i iVar = (i) cVar;
        if (this.f4694c == null) {
            if (iVar.f4694c != null) {
                return false;
            }
        } else if (!this.f4694c.d(iVar.f4694c)) {
            return false;
        }
        if (this.f4695d == null) {
            if (iVar.f4695d != null) {
                return false;
            }
        } else if (!this.f4695d.d(iVar.f4695d)) {
            return false;
        }
        return true;
    }

    @Override // L2.d
    public final void e(c cVar) {
        synchronized (this.f4693b) {
            try {
                if (cVar.equals(this.f4695d)) {
                    this.f4697f = 4;
                    return;
                }
                this.f4696e = 4;
                d dVar = this.f4692a;
                if (dVar != null) {
                    dVar.e(this);
                }
                if (!O.r(this.f4697f)) {
                    this.f4695d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // L2.c
    public final boolean f() {
        boolean z7;
        synchronized (this.f4693b) {
            z7 = this.f4696e == 3;
        }
        return z7;
    }

    @Override // L2.c
    public final void g() {
        synchronized (this.f4693b) {
            try {
                this.f4698g = true;
                try {
                    if (this.f4696e != 4 && this.f4697f != 1) {
                        this.f4697f = 1;
                        this.f4695d.g();
                    }
                    if (this.f4698g && this.f4696e != 1) {
                        this.f4696e = 1;
                        this.f4694c.g();
                    }
                    this.f4698g = false;
                } catch (Throwable th) {
                    this.f4698g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // L2.d
    public final d getRoot() {
        d root;
        synchronized (this.f4693b) {
            try {
                d dVar = this.f4692a;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // L2.d
    public final void h(c cVar) {
        synchronized (this.f4693b) {
            try {
                if (!cVar.equals(this.f4694c)) {
                    this.f4697f = 5;
                    return;
                }
                this.f4696e = 5;
                d dVar = this.f4692a;
                if (dVar != null) {
                    dVar.h(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // L2.d
    public final boolean i(c cVar) {
        boolean z7;
        synchronized (this.f4693b) {
            try {
                d dVar = this.f4692a;
                z7 = (dVar == null || dVar.i(this)) && cVar.equals(this.f4694c) && !a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // L2.c
    public final boolean isComplete() {
        boolean z7;
        synchronized (this.f4693b) {
            z7 = this.f4696e == 4;
        }
        return z7;
    }

    @Override // L2.c
    public final boolean isRunning() {
        boolean z7;
        synchronized (this.f4693b) {
            z7 = true;
            if (this.f4696e != 1) {
                z7 = false;
            }
        }
        return z7;
    }

    @Override // L2.c
    public final void pause() {
        synchronized (this.f4693b) {
            try {
                if (!O.r(this.f4697f)) {
                    this.f4697f = 2;
                    this.f4695d.pause();
                }
                if (!O.r(this.f4696e)) {
                    this.f4696e = 2;
                    this.f4694c.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
