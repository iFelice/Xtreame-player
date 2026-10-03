package b7;

import D1.C0152q;
import O1.C0314m;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONException;
import pe.hf.black20.R;
import pe.hf.black20.util.ORPlayerLinearLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public final class E0 extends O1.C implements View.OnKeyListener {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f9986I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public HashMap f9987J = new HashMap();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public ArrayList f9988K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ I0 f9989L;

    public E0(I0 i8, ArrayList arrayList) {
        this.f9989L = i8;
        this.f9986I = arrayList;
    }

    @Override // O1.C
    public final int a() {
        return this.f9986I.size();
    }

    @Override // O1.C
    public final void c(O1.c0 c0Var, int i8) {
        C0 c8;
        E0 e8;
        String str;
        String str2;
        E0 e9 = this;
        C0 c9 = (C0) c0Var;
        String str3 = "category_id";
        HashMap map = (HashMap) e9.f9986I.get(i8);
        e9.f9987J = map;
        c9.f9971a0.setText(((String) map.get("category_name")).toUpperCase());
        e9.f9988K = null;
        e9.f9988K = new ArrayList();
        int i9 = 0;
        while (true) {
            I0 i10 = e9.f9989L;
            if (i9 >= i10.f10045M0.length()) {
                C0 c10 = c9;
                E0 e10 = e9;
                i10.l();
                C0152q c0152q = new C0152q(i10, e10.f9988K);
                RecyclerView recyclerView = c10.f9972b0;
                recyclerView.setAdapter(c0152q);
                recyclerView.j(new C0314m(e10, 3));
                recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(new D0(e10, c10, 0));
                return;
            }
            try {
                String string = i10.f10045M0.getJSONObject(i9).getString(str3);
                c8 = c9;
                String str4 = "rating_5based";
                String str5 = "rating";
                try {
                    try {
                        if (i10.f10074p1.equals("fav")) {
                            str = "last_modified";
                        } else {
                            try {
                                if (i10.f10074p1.equals("continue")) {
                                    str = "last_modified";
                                } else {
                                    try {
                                        if (i10.f10074p1.equals("search")) {
                                            str4 = str4;
                                            str5 = str5;
                                            str = "last_modified";
                                            str2 = "youtube_trailer";
                                        } else if (i10.f10074p1.equals("all") && ((String) e9.f9987J.get(str3)).equals(string)) {
                                            HashMap map2 = new HashMap();
                                            map2.put("num", i10.f10045M0.getJSONObject(i9).getString("num"));
                                            map2.put("name", i10.f10045M0.getJSONObject(i9).getString("name"));
                                            map2.put("series_id", i10.f10045M0.getJSONObject(i9).getString("series_id"));
                                            map2.put("cover", i10.f10045M0.getJSONObject(i9).getString("cover"));
                                            map2.put("plot", i10.f10045M0.getJSONObject(i9).getString("plot"));
                                            map2.put("cast", i10.f10045M0.getJSONObject(i9).getString("director"));
                                            map2.put("director", i10.f10045M0.getJSONObject(i9).getString("series_id"));
                                            map2.put("genre", i10.f10045M0.getJSONObject(i9).getString("genre"));
                                            map2.put("releaseDate", i10.f10045M0.getJSONObject(i9).getString("releaseDate"));
                                            map2.put("last_modified", i10.f10045M0.getJSONObject(i9).getString("last_modified"));
                                            map2.put(str5, i10.f10045M0.getJSONObject(i9).getString(str5));
                                            map2.put(str4, i10.f10045M0.getJSONObject(i9).getString(str4));
                                            map2.put("backdrop_path", i10.f10045M0.getJSONObject(i9).getString("backdrop_path"));
                                            map2.put("youtube_trailer", i10.f10045M0.getJSONObject(i9).getString("youtube_trailer"));
                                            map2.put("episode_run_time", i10.f10045M0.getJSONObject(i9).getString("episode_run_time"));
                                            map2.put(str3, i10.f10045M0.getJSONObject(i9).getString(str3));
                                            e9.f9988K.add(map2);
                                        }
                                    } catch (JSONException unused) {
                                    }
                                    e8 = e9;
                                    i9++;
                                    e9 = e8;
                                    c9 = c8;
                                }
                                HashMap map3 = new HashMap();
                                map3.put("num", i10.f10045M0.getJSONObject(i9).getString("num"));
                                map3.put("name", i10.f10045M0.getJSONObject(i9).getString("name"));
                                map3.put("series_id", i10.f10045M0.getJSONObject(i9).getString("series_id"));
                                map3.put("cover", i10.f10045M0.getJSONObject(i9).getString("cover"));
                                map3.put("plot", i10.f10045M0.getJSONObject(i9).getString("plot"));
                                map3.put("cast", i10.f10045M0.getJSONObject(i9).getString("director"));
                                map3.put("director", i10.f10045M0.getJSONObject(i9).getString("series_id"));
                                map3.put("genre", i10.f10045M0.getJSONObject(i9).getString("genre"));
                                map3.put("releaseDate", i10.f10045M0.getJSONObject(i9).getString("releaseDate"));
                                map3.put(str, i10.f10045M0.getJSONObject(i9).getString(str));
                                map3.put(str5, i10.f10045M0.getJSONObject(i9).getString(str5));
                                map3.put(str4, i10.f10045M0.getJSONObject(i9).getString(str4));
                                map3.put("backdrop_path", i10.f10045M0.getJSONObject(i9).getString("backdrop_path"));
                                String str6 = str2;
                                map3.put(str6, i10.f10045M0.getJSONObject(i9).getString(str6));
                                map3.put("episode_run_time", i10.f10045M0.getJSONObject(i9).getString("episode_run_time"));
                                str3 = str3;
                                map3.put(str3, i10.f10045M0.getJSONObject(i9).getString(str3));
                                e8 = this;
                                e8.f9988K.add(map3);
                            } catch (JSONException unused2) {
                                e8 = this;
                            }
                            i9++;
                            e9 = e8;
                            c9 = c8;
                        }
                        e8.f9988K.add(map3);
                    } catch (JSONException unused3) {
                    }
                    HashMap map4 = new HashMap();
                    map4.put("num", i10.f10045M0.getJSONObject(i9).getString("num"));
                    map4.put("name", i10.f10045M0.getJSONObject(i9).getString("name"));
                    map4.put("series_id", i10.f10045M0.getJSONObject(i9).getString("series_id"));
                    map4.put("cover", i10.f10045M0.getJSONObject(i9).getString("cover"));
                    map4.put("plot", i10.f10045M0.getJSONObject(i9).getString("plot"));
                    map4.put("cast", i10.f10045M0.getJSONObject(i9).getString("director"));
                    map4.put("director", i10.f10045M0.getJSONObject(i9).getString("series_id"));
                    map4.put("genre", i10.f10045M0.getJSONObject(i9).getString("genre"));
                    map4.put("releaseDate", i10.f10045M0.getJSONObject(i9).getString("releaseDate"));
                    map4.put(str, i10.f10045M0.getJSONObject(i9).getString(str));
                    map4.put(str5, i10.f10045M0.getJSONObject(i9).getString(str5));
                    map4.put(str4, i10.f10045M0.getJSONObject(i9).getString(str4));
                    map4.put("backdrop_path", i10.f10045M0.getJSONObject(i9).getString("backdrop_path"));
                    String str7 = str2;
                    map4.put(str7, i10.f10045M0.getJSONObject(i9).getString(str7));
                    map4.put("episode_run_time", i10.f10045M0.getJSONObject(i9).getString("episode_run_time"));
                    str3 = str3;
                    map4.put(str3, i10.f10045M0.getJSONObject(i9).getString(str3));
                    e8 = this;
                } catch (JSONException unused4) {
                    e8 = this;
                    str3 = str3;
                }
                str2 = "youtube_trailer";
            } catch (JSONException unused5) {
                c8 = c9;
            }
            i9++;
            e9 = e8;
            c9 = c8;
        }
    }

    @Override // O1.C
    public final O1.c0 d(RecyclerView recyclerView, int i8) {
        View viewInflate = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_cat_item, (ViewGroup) recyclerView, false);
        C0 c8 = new C0(viewInflate);
        c8.f9971a0 = (TextView) viewInflate.findViewById(R.id.txt_cat_name_ch);
        RecyclerView recyclerView2 = (RecyclerView) viewInflate.findViewById(R.id.recyler_vod);
        c8.f9972b0 = recyclerView2;
        this.f9989L.l();
        recyclerView2.setLayoutManager(new ORPlayerLinearLayoutManager(0));
        return c8;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i8, KeyEvent keyEvent) {
        Log.d("XCIPTV_TAG", "-----------onKey called ");
        if (keyEvent.getAction() == 0) {
            if (i8 == 19) {
                Log.d("XCIPTV_TAG", "-----------up ARROW ");
            } else if (i8 == 20) {
                Log.d("XCIPTV_TAG", "-----------DOWN ARROW ");
                return false;
            }
        }
        return false;
    }
}
