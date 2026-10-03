package A1;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class H {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Serializable f304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f305e;

    public H(int i8, ArrayList arrayList) {
        this(i8, arrayList, -1, null);
    }

    public final InputStream a() {
        Object obj = this.f305e;
        if (((InputStream) obj) != null) {
            return (InputStream) obj;
        }
        Object obj2 = this.f304d;
        if (((byte[]) obj2) != null) {
            return new ByteArrayInputStream((byte[]) obj2);
        }
        return null;
    }

    public final int b() {
        int i8 = this.f303c;
        if (i8 == 2) {
            return 2048;
        }
        if (i8 != 3) {
            return 0;
        }
        return IMediaList.Event.ItemAdded;
    }

    public H(int i8, ArrayList arrayList, int i9, InputStream inputStream) {
        this.f301a = i8;
        this.f302b = arrayList;
        this.f303c = i9;
        this.f305e = inputStream;
        this.f304d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public H(int i8, String str, int i9, ArrayList arrayList, byte[] bArr) {
        List listUnmodifiableList;
        this.f301a = i8;
        this.f305e = str;
        this.f303c = i9;
        if (arrayList == null) {
            listUnmodifiableList = Collections.emptyList();
        } else {
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        this.f302b = listUnmodifiableList;
        this.f304d = bArr;
    }
}
