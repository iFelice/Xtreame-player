package V2;

import android.content.Context;
import com.google.android.datatransport.cct.CctBackendFactory;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Q5.b f7100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f7101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f7102c;

    public f(Context context, d dVar) {
        Q5.b bVar = new Q5.b(context);
        this.f7102c = new HashMap();
        this.f7100a = bVar;
        this.f7101b = dVar;
    }

    public final synchronized h a(String str) {
        if (this.f7102c.containsKey(str)) {
            return (h) this.f7102c.get(str);
        }
        CctBackendFactory cctBackendFactoryA = this.f7100a.a(str);
        if (cctBackendFactoryA == null) {
            return null;
        }
        d dVar = this.f7101b;
        h hVarCreate = cctBackendFactoryA.create(new b(dVar.f7093a, dVar.f7094b, dVar.f7095c, str));
        this.f7102c.put(str, hVarCreate);
        return hVarCreate;
    }
}
