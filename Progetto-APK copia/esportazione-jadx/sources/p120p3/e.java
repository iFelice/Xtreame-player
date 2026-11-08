package p120p3;

import android.util.JsonWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements f {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f28210G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public String f28211H;

    public final void a(StringBuilder sb, Iterator it) {
        try {
            if (it.hasNext()) {
                Object next = it.next();
                Objects.requireNonNull(next);
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (it.hasNext()) {
                    sb.append((CharSequence) this.f28211H);
                    Object next2 = it.next();
                    Objects.requireNonNull(next2);
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
        } catch (IOException e8) {
            throw new AssertionError(e8);
        }
    }

    @Override // p120p3.f
    public final void m(JsonWriter jsonWriter) throws IOException {
        Object obj = g.f28212b;
        jsonWriter.name("params").beginObject();
        String str = this.f28211H;
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    public final String toString() {
        switch (this.f28210G) {
            case 5:
                return "<" + this.f28211H + '>';
            default:
                return super.toString();
        }
    }

    public /* synthetic */ e(String str, int i8) {
        this.f28210G = i8;
        this.f28211H = str;
    }

    public e(String str) {
        this.f28210G = 4;
        str.getClass();
        this.f28211H = str;
    }
}
