package p082k2;

import H3.b;
import P2.o;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.C1625le;
import com.google.android.gms.internal.ads.K4;
import com.google.android.gms.internal.cast.C2509w;
import com.google.android.gms.internal.pal.C2805r1;
import p017c0.a;
import p027d2.n;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class h extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f25926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f25927b;

    public /* synthetic */ h(Object obj, int i8) {
        this.f25926a = i8;
        this.f25927b = obj;
    }

    private final void a(NetworkCapabilities networkCapabilities) {
        synchronized (K4.class) {
            ((K4) this.f25927b).f14301H = networkCapabilities;
        }
    }

    private final void b() {
        synchronized (K4.class) {
            ((K4) this.f25927b).f14301H = null;
        }
    }

    private final void c(Network network) {
        C2509w c2509w = (C2509w) this.f25927b;
        Object obj = c2509w.f22814h;
        c.h(obj);
        synchronized (obj) {
            try {
                if (c2509w.f22810d != null && c2509w.f22811e != null) {
                    C2509w.f22806j.b("the network is lost", new Object[0]);
                    if (c2509w.f22811e.remove(network)) {
                        c2509w.f22810d.remove(network);
                    }
                    c2509w.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        int i8 = 1;
        boolean z7 = true;
        switch (this.f25926a) {
            case 1:
                o.f().post(new a(i8, this, z7 ? 1 : 0));
                break;
            case 2:
            default:
                super.onAvailable(network);
                break;
            case 3:
                ((C1625le) this.f25927b).f19819o.set(true);
                break;
            case 4:
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        switch (this.f25926a) {
            case 0:
                q0.h(network, "network");
                q0.h(networkCapabilities, "capabilities");
                n.d().a(j.f25930a, "Network capabilities changed: " + networkCapabilities);
                i iVar = (i) this.f25927b;
                iVar.c(j.a(iVar.f25928f));
                return;
            case 2:
                a(networkCapabilities);
                return;
            case 5:
                synchronized (C2805r1.class) {
                    ((C2805r1) this.f25927b).f23994H = networkCapabilities;
                    break;
                }
                return;
            default:
                super.onCapabilitiesChanged(network, networkCapabilities);
                return;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        switch (this.f25926a) {
            case 4:
                C2509w c2509w = (C2509w) this.f25927b;
                b bVar = C2509w.f22806j;
                c2509w.a(network, linkProperties);
                break;
            default:
                super.onLinkPropertiesChanged(network, linkProperties);
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        boolean z7 = false;
        switch (this.f25926a) {
            case 0:
                q0.h(network, "network");
                n.d().a(j.f25930a, "Network connection lost");
                i iVar = (i) this.f25927b;
                iVar.c(j.a(iVar.f25928f));
                return;
            case 1:
                o.f().post(new a(1, this, z7));
                return;
            case 2:
                b();
                return;
            case 3:
                ((C1625le) this.f25927b).f19819o.set(false);
                return;
            case 4:
                c(network);
                return;
            default:
                synchronized (C2805r1.class) {
                    ((C2805r1) this.f25927b).f23994H = null;
                    break;
                }
                return;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onUnavailable() {
        switch (this.f25926a) {
            case 4:
                C2509w c2509w = (C2509w) this.f25927b;
                Object obj = c2509w.f22814h;
                c.h(obj);
                synchronized (obj) {
                    if (c2509w.f22810d != null && c2509w.f22811e != null) {
                        C2509w.f22806j.b("all networks are unavailable.", new Object[0]);
                        c2509w.f22810d.clear();
                        c2509w.f22811e.clear();
                        c2509w.b();
                        return;
                    }
                    return;
                }
            default:
                super.onUnavailable();
                return;
        }
    }
}
