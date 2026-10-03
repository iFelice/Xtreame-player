package C0;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.util.Base64;
import com.google.api.Service;
import com.google.internal.firebase.inappmessaging.v1.sdkserving.CampaignImpressionList;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: C0.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0084i implements p117p0.u, W0.v, p012b3.h, p037e5.b, p052g4.f, p085k6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1303G;

    public /* synthetic */ C0084i(int i8) {
        this.f1303G = i8;
    }

    @Override // W0.v
    public W0.s[] a(Uri uri, Map map) {
        return b();
    }

    @Override // p012b3.h
    public Object apply(Object obj) {
        switch (this.f1303G) {
            case 12:
                R2.b bVar = p012b3.j.f9852L;
                throw new p020c3.a("Timed out while trying to acquire the lock.", (Throwable) obj);
            case 13:
                R2.b bVar2 = p012b3.j.f9852L;
                throw new p020c3.a("Timed out while trying to open db.", (Throwable) obj);
            case 14:
                R2.b bVar3 = p012b3.j.f9852L;
                return (List) p012b3.j.c0(((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new C0084i(16));
            case 15:
                Cursor cursor = (Cursor) obj;
                R2.b bVar4 = p012b3.j.f9852L;
                if (cursor.moveToNext()) {
                    return Long.valueOf(cursor.getLong(0));
                }
                return 0L;
            case 16:
                Cursor cursor2 = (Cursor) obj;
                R2.b bVar5 = p012b3.j.f9852L;
                ArrayList arrayList = new ArrayList();
                while (cursor2.moveToNext()) {
                    p096m2.u uVarA = U2.i.a();
                    uVarA.R(cursor2.getString(1));
                    uVarA.S(p035e3.a.b(cursor2.getInt(2)));
                    String string = cursor2.getString(3);
                    uVarA.f27279I = string == null ? null : Base64.decode(string, 0);
                    arrayList.add(uVarA.j());
                }
                return arrayList;
            case 17:
                Cursor cursor3 = (Cursor) obj;
                R2.b bVar6 = p012b3.j.f9852L;
                if (cursor3.moveToNext()) {
                    return Long.valueOf(cursor3.getLong(0));
                }
                return null;
            case 18:
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            case 19:
                R2.b bVar7 = p012b3.j.f9852L;
                return Boolean.valueOf(((Cursor) obj).getCount() > 0);
            case 20:
                Cursor cursor4 = (Cursor) obj;
                R2.b bVar8 = p012b3.j.f9852L;
                ArrayList arrayList2 = new ArrayList();
                int length = 0;
                while (cursor4.moveToNext()) {
                    byte[] blob = cursor4.getBlob(0);
                    arrayList2.add(blob);
                    length += blob.length;
                }
                byte[] bArr = new byte[length];
                int length2 = 0;
                for (int i8 = 0; i8 < arrayList2.size(); i8++) {
                    byte[] bArr2 = (byte[]) arrayList2.get(i8);
                    System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
                    length2 += bArr2.length;
                }
                return bArr;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case Service.BILLING_FIELD_NUMBER /* 26 */:
            case 27:
            default:
                List list = (List) obj;
                p100m6.b.a(list, "source is null");
                return new p115o6.b(list, 1);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return ((CampaignImpressionList) obj).getAlreadySeenCampaignsList();
        }
    }

    public W0.s[] b() {
        return new W0.s[]{new B1.d()};
    }

    @Override // p117p0.u
    public void invoke(Object obj) {
        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj;
        switch (this.f1303G) {
            case 0:
                interfaceC0078c.getClass();
                break;
            case 1:
                interfaceC0078c.getClass();
                break;
            case 2:
                interfaceC0078c.getClass();
                break;
            case 3:
                interfaceC0078c.getClass();
                break;
            case 4:
                interfaceC0078c.getClass();
                break;
            default:
                interfaceC0078c.getClass();
                break;
        }
    }

    @Override // p052g4.f
    public void onSuccess(Object obj) {
        p027d2.v.q("Starting InAppMessaging runtime with Installation ID " + ((String) obj));
    }

    public /* synthetic */ C0084i(C0077b c0077b, int i8) {
        this.f1303G = i8;
    }
}
