package b7;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.Toast;
import com.google.protobuf.U2;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class F implements AdapterView.OnItemLongClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9995b;

    public /* synthetic */ F(Object obj, int i8) {
        this.f9994a = i8;
        this.f9995b = obj;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView adapterView, View view, int i8, long j8) {
        p000a.r rVar = null;
        int i9 = this.f9994a;
        Object obj = this.f9995b;
        switch (i9) {
            case 0:
                D d6 = (D) obj;
                if (((String) ((HashMap) d6.f9977b.f28448K.get(i8)).get("category_id")).equals("99999")) {
                    ChannelListActivity.a(d6.f9977b);
                }
                break;
            case 1:
                D d8 = (D) obj;
                ChannelListActivity channelListActivity = d8.f9977b;
                c7.d dVar = channelListActivity.f28452O;
                String str = (String) ((HashMap) channelListActivity.f28450M.get(i8)).get("stream_id");
                ChannelListActivity channelListActivity2 = d8.f9977b;
                if (dVar.d0(str, channelListActivity2.f28455R.f25478a, "_live").equals("yes")) {
                    channelListActivity2.f28452O.e0((String) ((HashMap) channelListActivity2.f28450M.get(i8)).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_live");
                } else {
                    channelListActivity2.f28452O.f0((String) ((HashMap) channelListActivity2.f28450M.get(i8)).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_live");
                }
                new D(channelListActivity2, (Object) rVar).execute(new Void[0]);
                break;
            case 2:
                D d9 = (D) obj;
                if (((String) ((HashMap) d9.f9977b.f28448K.get(i8)).get("category_id")).equals("99999")) {
                    ChannelListActivity.a(d9.f9977b);
                }
                break;
            case 3:
                D d10 = (D) obj;
                c7.d dVar2 = d10.f9977b.f28452O;
                StringBuilder sb = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                ChannelListActivity channelListActivity3 = d10.f9977b;
                sb.append((String) ((HashMap) channelListActivity3.f28450M.get(i8)).get("stream_id"));
                if (dVar2.A0(sb.toString()) > 0) {
                    ChannelListActivity.c(channelListActivity3, channelListActivity3.f28452O, (String) ((HashMap) channelListActivity3.f28450M.get(i8)).get("stream_id"));
                } else if (channelListActivity3.f28452O.d0((String) ((HashMap) channelListActivity3.f28450M.get(i8)).get("stream_id"), channelListActivity3.f28455R.f25478a, "_vod").equals("yes")) {
                    channelListActivity3.f28452O.e0((String) ((HashMap) channelListActivity3.f28450M.get(i8)).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_vod");
                } else {
                    channelListActivity3.f28452O.f0((String) ((HashMap) channelListActivity3.f28450M.get(i8)).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_vod");
                }
                new D(channelListActivity3, rVar).execute(new Void[0]);
                break;
            default:
                M0 m7 = (M0) obj;
                ImageView imageView = (ImageView) view.findViewById(R.id.img_fav).findViewWithTag(((HashMap) m7.f10117E0.get(i8)).get("stream_id"));
                if (!m7.f10121I0.d0((String) ((HashMap) m7.f10117E0.get(i8)).get("stream_id"), m7.f10122J0.f25478a, "_live").equals("yes")) {
                    m7.f10121I0.f0((String) ((HashMap) m7.f10117E0.get(i8)).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_live");
                    imageView.setVisibility(0);
                    Toast.makeText(m7.l(), ((String) ((HashMap) m7.f10117E0.get(i8)).get("name")) + " - has been added to Favorites", 1).show();
                } else {
                    m7.f10121I0.e0((String) ((HashMap) m7.f10117E0.get(i8)).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_live");
                    imageView.setVisibility(8);
                    Toast.makeText(m7.l(), ((String) ((HashMap) m7.f10117E0.get(i8)).get("name")) + " - has been removed from Favorites", 1).show();
                }
                break;
        }
        return true;
    }
}
