package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import p027d2.v;
import p162u6.h;
import p162u6.q;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public interface Dns {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final Dns SYSTEM = new Companion.DnsSystem();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public static final class DnsSystem implements Dns {
            @Override // okhttp3.Dns
            public List<InetAddress> lookup(String str) throws UnknownHostException {
                q0.h(str, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(str);
                    q0.g(allByName, "getAllByName(hostname)");
                    int length = allByName.length;
                    if (length != 0) {
                        return length != 1 ? new ArrayList(new h(allByName, false)) : v.o(allByName[0]);
                    }
                    return q.f30542G;
                } catch (NullPointerException e8) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(str));
                    unknownHostException.initCause(e8);
                    throw unknownHostException;
                }
            }
        }

        private Companion() {
        }
    }

    List<InetAddress> lookup(String str);
}
