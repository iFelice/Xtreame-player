package p014b5;

import Y5.i;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9867a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f9868b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9869c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9870d = 0;

    public final SocketAddress a() {
        switch (this.f9867a) {
            case 1:
                ((i) this.f9868b.get(this.f9869c)).getClass();
                throw null;
            default:
                if (!c()) {
                    throw new IllegalStateException("Index is past the end of the address group list");
                }
                ((i) this.f9868b.get(this.f9869c)).getClass();
                throw null;
        }
    }

    public final boolean b() {
        if (!c()) {
            return false;
        }
        i iVar = (i) this.f9868b.get(this.f9869c);
        this.f9870d++;
        iVar.getClass();
        throw null;
    }

    public final boolean c() {
        switch (this.f9867a) {
            case 1:
                return this.f9869c < this.f9868b.size();
            default:
                return this.f9869c < this.f9868b.size();
        }
    }

    public final void d() {
        switch (this.f9867a) {
            case 1:
                this.f9869c = 0;
                this.f9870d = 0;
                break;
            default:
                this.f9869c = 0;
                this.f9870d = 0;
                break;
        }
    }
}
