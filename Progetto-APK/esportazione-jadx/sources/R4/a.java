package R4;

import S4.f;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6290a;

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        switch (this.f6290a) {
            case 0:
                throw new P4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                P4.e eVar = (P4.e) obj2;
                Charset charset = f.f6439f;
                eVar.a(f.f6440g, entry.getKey());
                eVar.a(f.f6441h, entry.getValue());
                return;
            default:
                throw new P4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}
