package b7;

import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.widget.EditText;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import pe.hf.black20.ParentalControlActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Config;

/* JADX INFO: loaded from: classes2.dex */
public final class V0 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ParentalControlActivity f10242b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V0(ParentalControlActivity parentalControlActivity) {
        this(parentalControlActivity, 0);
        this.f10241a = 0;
    }

    public final void a() {
        Object obj;
        Object obj2;
        int i8 = this.f10241a;
        String str = "No";
        Object obj3 = "yes";
        ParentalControlActivity parentalControlActivity = this.f10242b;
        switch (i8) {
            case 0:
                ArrayList arrayList = new ArrayList();
                parentalControlActivity.f28824T = arrayList;
                arrayList.clear();
                ParentalControlActivity parentalControlActivity2 = parentalControlActivity.f28811G;
                c7.d dVar = new c7.d(parentalControlActivity2);
                Object obj4 = obj3;
                Object obj5 = "Yes";
                new c7.b(parentalControlActivity2, 1);
                c7.b bVar = new c7.b(parentalControlActivity2, 0);
                SharedPreferences sharedPreferences = parentalControlActivity2.getSharedPreferences("pe.hf.black20", 0);
                if (Config.f29414b.equals("no") && !sharedPreferences.getString("filter_status", null).equals("No") && !sharedPreferences.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) && !sharedPreferences.getString("filter_status", null).equals("null")) {
                    str = obj5;
                }
                new ArrayList().clear();
                ArrayList arrayListN0 = dVar.n0();
                ArrayList arrayList2 = new ArrayList();
                int i9 = 0;
                while (i9 < arrayListN0.size()) {
                    if (i9 == 0) {
                        HashMap map = new HashMap();
                        map.put("category_id", "99999");
                        map.put("category_name", parentalControlActivity2.getString(R.string.xc_favorites));
                        map.put("parent_id", "0");
                        arrayList2.add(map);
                        HashMap map2 = new HashMap();
                        map2.put("category_id", "00000");
                        map2.put("category_name", parentalControlActivity2.getString(R.string.xc_recently_added));
                        map2.put("parent_id", "0");
                        arrayList2.add(map2);
                    }
                    Object obj6 = obj5;
                    if (str.equals(obj6)) {
                        obj = obj4;
                        if (bVar.c0(((h7.a) arrayListN0.get(i9)).f25422b, "Series").equals(obj)) {
                            HashMap map3 = new HashMap();
                            map3.put("category_id", ((h7.a) arrayListN0.get(i9)).f25421a);
                            map3.put("category_name", ((h7.a) arrayListN0.get(i9)).f25422b);
                            map3.put("parent_id", ((h7.a) arrayListN0.get(i9)).f25423c);
                            arrayList2.add(map3);
                        }
                    } else {
                        obj = obj4;
                        HashMap map4 = new HashMap();
                        map4.put("category_id", ((h7.a) arrayListN0.get(i9)).f25421a);
                        map4.put("category_name", ((h7.a) arrayListN0.get(i9)).f25422b);
                        map4.put("parent_id", ((h7.a) arrayListN0.get(i9)).f25423c);
                        arrayList2.add(map4);
                    }
                    i9++;
                    obj5 = obj6;
                    obj4 = obj;
                }
                parentalControlActivity.f28824T = arrayList2;
                parentalControlActivity.f28827W = null;
                parentalControlActivity.f28827W = new JSONArray((Collection) parentalControlActivity.f28824T);
                break;
            case 1:
                ArrayList arrayList3 = new ArrayList();
                parentalControlActivity.f28822R = arrayList3;
                arrayList3.clear();
                ParentalControlActivity parentalControlActivity3 = parentalControlActivity.f28811G;
                ArrayList arrayList4 = new ArrayList();
                new ArrayList();
                new c7.b(parentalControlActivity3, 1);
                c7.d dVar2 = new c7.d(parentalControlActivity3);
                c7.b bVar2 = new c7.b(parentalControlActivity3, 0);
                SharedPreferences sharedPreferences2 = parentalControlActivity3.getSharedPreferences("pe.hf.black20", 0);
                ArrayList arrayListQ0 = dVar2.q0();
                if (Config.f29414b.equals("no") && !sharedPreferences2.getString("filter_status", null).equals("No") && !sharedPreferences2.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) && !sharedPreferences2.getString("filter_status", null).equals("null")) {
                    str = "Yes";
                }
                for (int i10 = 0; i10 < arrayListQ0.size(); i10++) {
                    if (!str.equals("Yes")) {
                        HashMap map5 = new HashMap();
                        map5.put("category_id", ((h7.a) arrayListQ0.get(i10)).f25421a);
                        map5.put("category_name", ((h7.a) arrayListQ0.get(i10)).f25422b);
                        map5.put("parent_id", ((h7.a) arrayListQ0.get(i10)).f25423c);
                        arrayList4.add(map5);
                    } else if (bVar2.c0(((h7.a) arrayListQ0.get(i10)).f25422b, "Live").equals(obj3)) {
                        HashMap map6 = new HashMap();
                        map6.put("category_id", ((h7.a) arrayListQ0.get(i10)).f25421a);
                        map6.put("category_name", ((h7.a) arrayListQ0.get(i10)).f25422b);
                        map6.put("parent_id", ((h7.a) arrayListQ0.get(i10)).f25423c);
                        arrayList4.add(map6);
                    }
                }
                parentalControlActivity.f28822R = arrayList4;
                parentalControlActivity.f28825U = null;
                parentalControlActivity.f28825U = new JSONArray((Collection) parentalControlActivity.f28822R);
                break;
            default:
                ArrayList arrayList5 = new ArrayList();
                parentalControlActivity.f28823S = arrayList5;
                arrayList5.clear();
                ParentalControlActivity parentalControlActivity4 = parentalControlActivity.f28811G;
                c7.d dVar3 = new c7.d(parentalControlActivity4);
                String str2 = "Yes";
                new c7.b(parentalControlActivity4, 1);
                c7.b bVar3 = new c7.b(parentalControlActivity4, 0);
                SharedPreferences sharedPreferences3 = parentalControlActivity4.getSharedPreferences("pe.hf.black20", 0);
                String str3 = (!Config.f29414b.equals("no") || sharedPreferences3.getString("filter_status", null).equals("No") || sharedPreferences3.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) || sharedPreferences3.getString("filter_status", null).equals("null")) ? "No" : str2;
                new ArrayList().clear();
                ArrayList arrayListS0 = dVar3.s0();
                ArrayList arrayList6 = new ArrayList();
                int i11 = 0;
                while (i11 < arrayListS0.size()) {
                    if (i11 == 0) {
                        HashMap map7 = new HashMap();
                        map7.put("category_id", "99999");
                        map7.put("category_name", parentalControlActivity4.getString(R.string.xc_favorites));
                        map7.put("parent_id", "0");
                        arrayList6.add(map7);
                        if (str3.equals("No")) {
                            HashMap map8 = new HashMap();
                            map8.put("category_id", "00000");
                            map8.put("category_name", parentalControlActivity4.getString(R.string.xc_recently_added));
                            map8.put("parent_id", "0");
                            arrayList6.add(map8);
                        }
                    }
                    String str4 = str2;
                    if (str3.equals(str4)) {
                        obj2 = obj3;
                        if (bVar3.c0(((h7.a) arrayListS0.get(i11)).f25422b, "VOD").equals(obj2)) {
                            HashMap map9 = new HashMap();
                            map9.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                            map9.put("category_name", ((h7.a) arrayListS0.get(i11)).f25422b);
                            map9.put("parent_id", ((h7.a) arrayListS0.get(i11)).f25423c);
                            arrayList6.add(map9);
                        }
                    } else {
                        obj2 = obj3;
                        HashMap map10 = new HashMap();
                        map10.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                        map10.put("category_name", ((h7.a) arrayListS0.get(i11)).f25422b);
                        map10.put("parent_id", ((h7.a) arrayListS0.get(i11)).f25423c);
                        arrayList6.add(map10);
                    }
                    i11++;
                    obj3 = obj2;
                    str2 = str4;
                    parentalControlActivity4 = parentalControlActivity4;
                }
                parentalControlActivity.f28823S = arrayList6;
                parentalControlActivity.f28826V = null;
                parentalControlActivity.f28826V = new JSONArray((Collection) parentalControlActivity.f28823S);
                break;
        }
    }

    public final void b(Void r7) {
        int i8 = this.f10241a;
        ParentalControlActivity parentalControlActivity = this.f10242b;
        switch (i8) {
            case 0:
                super.onPostExecute(r7);
                parentalControlActivity.f28821Q.setVisibility(4);
                parentalControlActivity.f28820P.setAdapter((ListAdapter) new M(1, parentalControlActivity.f28811G, parentalControlActivity.f28824T));
                parentalControlActivity.f28820P.setOnItemClickListener(new C0514f(this, 14));
                break;
            case 1:
                super.onPostExecute(r7);
                EditText editText = ParentalControlActivity.f28809X;
                parentalControlActivity.getClass();
                new V0(parentalControlActivity, (p000a.r) null).execute(new Void[0]);
                parentalControlActivity.f28818N.setAdapter((ListAdapter) new M(2, parentalControlActivity.f28811G, parentalControlActivity.f28822R));
                parentalControlActivity.f28818N.requestFocus();
                parentalControlActivity.f28818N.setOnItemClickListener(new C0514f(this, 15));
                break;
            default:
                super.onPostExecute(r7);
                EditText editText2 = ParentalControlActivity.f28809X;
                parentalControlActivity.getClass();
                new V0(parentalControlActivity).execute(new Void[0]);
                parentalControlActivity.f28819O.setAdapter((ListAdapter) new M(3, parentalControlActivity.f28811G, parentalControlActivity.f28823S));
                parentalControlActivity.f28819O.setOnItemClickListener(new C0514f(this, 16));
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        switch (this.f10241a) {
            case 0:
                a();
                break;
            case 1:
                a();
                break;
            default:
                a();
                break;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        switch (this.f10241a) {
            case 0:
                b((Void) obj);
                break;
            case 1:
                b((Void) obj);
                break;
            default:
                b((Void) obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        int i8 = this.f10241a;
        ParentalControlActivity parentalControlActivity = this.f10242b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                parentalControlActivity.f28821Q.setVisibility(0);
                break;
            case 1:
                super.onPreExecute();
                parentalControlActivity.f28821Q.setVisibility(0);
                break;
            default:
                super.onPreExecute();
                parentalControlActivity.f28821Q.setVisibility(0);
                break;
        }
    }

    public /* synthetic */ V0(ParentalControlActivity parentalControlActivity, int i8) {
        this.f10241a = i8;
        this.f10242b = parentalControlActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V0(ParentalControlActivity parentalControlActivity, p000a.r rVar) {
        this(parentalControlActivity, 2);
        this.f10241a = 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V0(ParentalControlActivity parentalControlActivity, Object obj) {
        this(parentalControlActivity, 1);
        this.f10241a = 1;
    }
}
