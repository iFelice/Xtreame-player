package b7;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0548s0 extends O1.c0 {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final TextView f10407a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final ImageView f10408b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final ImageView f10409c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final CardView f10410d0;

    public C0548s0(View view) {
        super(view);
        this.f10407a0 = (TextView) view.findViewById(R.id.txt_movie_name);
        this.f10408b0 = (ImageView) view.findViewById(R.id.img_poster);
        this.f10409c0 = (ImageView) view.findViewById(R.id.img_fav);
        this.f10410d0 = (CardView) view.findViewById(R.id.cardview_vod);
    }
}
