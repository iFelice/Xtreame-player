package C2;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class J implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C f1370b;

    public /* synthetic */ J(C c8, int i8) {
        this.f1369a = i8;
        this.f1370b = c8;
    }

    @Override // C2.C
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        switch (this.f1369a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // C2.C
    public final B b(Object obj, int i8, int i9, p173w2.l lVar) {
        Uri uriFromFile;
        int i10 = this.f1369a;
        C c8 = this.f1370b;
        switch (i10) {
            case 0:
                String str = (String) obj;
                if (TextUtils.isEmpty(str)) {
                    uriFromFile = null;
                } else if (str.charAt(0) == '/') {
                    uriFromFile = Uri.fromFile(new File(str));
                } else {
                    Uri uri = Uri.parse(str);
                    uriFromFile = uri.getScheme() == null ? Uri.fromFile(new File(str)) : uri;
                }
                if (uriFromFile == null || !c8.a(uriFromFile)) {
                    return null;
                }
                return c8.b(uriFromFile, i8, i9, lVar);
            default:
                return c8.b(new t((URL) obj), i8, i9, lVar);
        }
    }
}
