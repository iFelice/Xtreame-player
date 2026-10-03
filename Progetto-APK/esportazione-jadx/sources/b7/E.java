package b7;

import android.view.View;
import android.widget.AdapterView;
import com.google.protobuf.U2;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.ChannelListActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class E implements AdapterView.OnItemLongClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f9985b;

    public /* synthetic */ E(D d6, int i8) {
        this.f9984a = i8;
        this.f9985b = d6;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView adapterView, View view, int i8, long j8) {
        int i9 = this.f9984a;
        D d6 = this.f9985b;
        switch (i9) {
            case 0:
                if (((String) ((HashMap) d6.f9977b.f28448K.get(i8)).get("category_id")).equals("99999")) {
                    ChannelListActivity.a(d6.f9977b);
                }
                break;
            default:
                c7.d dVar = d6.f9977b.f28452O;
                StringBuilder sb = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                ChannelListActivity channelListActivity = d6.f9977b;
                sb.append((String) ((HashMap) channelListActivity.f28450M.get(i8)).get("stream_id"));
                if (dVar.A0(sb.toString()) > 0) {
                    ChannelListActivity.c(channelListActivity, channelListActivity.f28452O, (String) ((HashMap) channelListActivity.f28450M.get(i8)).get("stream_id"));
                } else if (channelListActivity.f28452O.d0((String) ((HashMap) channelListActivity.f28450M.get(i8)).get("series_id"), channelListActivity.f28455R.f25478a, "_series").equals("yes")) {
                    channelListActivity.f28452O.e0((String) ((HashMap) channelListActivity.f28450M.get(i8)).get("series_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_series");
                } else {
                    channelListActivity.f28452O.f0((String) ((HashMap) channelListActivity.f28450M.get(i8)).get("series_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_series");
                }
                new D(channelListActivity).execute(new Void[0]);
                break;
        }
        return true;
    }
}
