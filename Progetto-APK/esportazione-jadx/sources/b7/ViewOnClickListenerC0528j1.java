package b7;

import android.content.SharedPreferences;
import android.view.View;
import pe.hf.black20.PlayerSettingsActivity;

/* JADX INFO: renamed from: b7.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0528j1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10327G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ PlayerSettingsActivity f10328H;

    public /* synthetic */ ViewOnClickListenerC0528j1(PlayerSettingsActivity playerSettingsActivity, int i8) {
        this.f10327G = i8;
        this.f10328H = playerSettingsActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        int i8 = this.f10327G;
        PlayerSettingsActivity playerSettingsActivity = this.f10328H;
        switch (i8) {
            case 0:
                if (playerSettingsActivity.f28982I.isChecked()) {
                    playerSettingsActivity.f28973B0 = "0";
                }
                if (playerSettingsActivity.f28984J.isChecked()) {
                    playerSettingsActivity.f28973B0 = "10000";
                }
                if (playerSettingsActivity.f28986K.isChecked()) {
                    playerSettingsActivity.f28973B0 = "20000";
                }
                if (playerSettingsActivity.f28987L.isChecked()) {
                    playerSettingsActivity.f28973B0 = "30000";
                }
                if (playerSettingsActivity.f28988M.isChecked()) {
                    playerSettingsActivity.f28973B0 = "40000";
                }
                if (playerSettingsActivity.f28989N.isChecked()) {
                    playerSettingsActivity.f28973B0 = "50000";
                }
                if (playerSettingsActivity.f28990O.isChecked()) {
                    playerSettingsActivity.f28976E0 = "0";
                }
                if (playerSettingsActivity.f28991P.isChecked()) {
                    playerSettingsActivity.f28976E0 = "2";
                }
                if (playerSettingsActivity.f28992Q.isChecked()) {
                    playerSettingsActivity.f28976E0 = "1";
                }
                if (playerSettingsActivity.f28993R.isChecked()) {
                    playerSettingsActivity.f28976E0 = "3";
                }
                if (playerSettingsActivity.f28994S.isChecked()) {
                    playerSettingsActivity.f28976E0 = "4";
                }
                if (playerSettingsActivity.f28995T.isChecked()) {
                    playerSettingsActivity.f28974C0 = "yes";
                }
                if (playerSettingsActivity.f28996U.isChecked()) {
                    playerSettingsActivity.f28974C0 = "no";
                }
                if (playerSettingsActivity.f28997V.isChecked()) {
                    playerSettingsActivity.f29027z0 = "60";
                }
                if (playerSettingsActivity.f28998W.isChecked()) {
                    playerSettingsActivity.f29027z0 = "70";
                }
                if (playerSettingsActivity.f28999X.isChecked()) {
                    playerSettingsActivity.f29027z0 = "80";
                }
                if (playerSettingsActivity.f29000Y.isChecked()) {
                    playerSettingsActivity.f29027z0 = "90";
                }
                if (playerSettingsActivity.f29001Z.isChecked()) {
                    playerSettingsActivity.f29027z0 = "100";
                }
                SharedPreferences.Editor editorEdit = playerSettingsActivity.f28980H.edit();
                editorEdit.putString("video_resize_exo", playerSettingsActivity.f28976E0);
                editorEdit.putString("video_subtiltes_exo", playerSettingsActivity.f28974C0);
                editorEdit.putString("last_volume", playerSettingsActivity.f29027z0);
                editorEdit.putString("plyer_exo_buffer", playerSettingsActivity.f28973B0);
                editorEdit.apply();
                editorEdit.commit();
                playerSettingsActivity.finish();
                break;
            case 1:
                if (playerSettingsActivity.f29002a0.isChecked()) {
                    playerSettingsActivity.f28979G0 = "1000";
                }
                if (playerSettingsActivity.f29003b0.isChecked()) {
                    playerSettingsActivity.f28979G0 = "1500";
                }
                if (playerSettingsActivity.f29004c0.isChecked()) {
                    playerSettingsActivity.f28979G0 = "2000";
                }
                if (playerSettingsActivity.f29005d0.isChecked()) {
                    playerSettingsActivity.f28979G0 = "3000";
                }
                if (playerSettingsActivity.f29006e0.isChecked()) {
                    playerSettingsActivity.f28979G0 = "5000";
                }
                if (playerSettingsActivity.f29007f0.isChecked()) {
                    playerSettingsActivity.f28977F0 = "0";
                }
                if (playerSettingsActivity.f29008g0.isChecked()) {
                    playerSettingsActivity.f28977F0 = "1";
                }
                if (playerSettingsActivity.f29009h0.isChecked()) {
                    playerSettingsActivity.f28977F0 = "2";
                }
                if (playerSettingsActivity.f29010i0.isChecked()) {
                    playerSettingsActivity.f28977F0 = "3";
                }
                if (playerSettingsActivity.f29011j0.isChecked()) {
                    playerSettingsActivity.f28977F0 = "4";
                }
                if (playerSettingsActivity.f29012k0.isChecked()) {
                    playerSettingsActivity.f28975D0 = "yes";
                }
                if (playerSettingsActivity.f29013l0.isChecked()) {
                    str = "no";
                    playerSettingsActivity.f28975D0 = str;
                } else {
                    str = "no";
                }
                if (playerSettingsActivity.f29014m0.isChecked()) {
                    playerSettingsActivity.f28972A0 = "60";
                }
                if (playerSettingsActivity.f29015n0.isChecked()) {
                    playerSettingsActivity.f28972A0 = "70";
                }
                if (playerSettingsActivity.f29016o0.isChecked()) {
                    playerSettingsActivity.f28972A0 = "80";
                }
                if (playerSettingsActivity.f29017p0.isChecked()) {
                    playerSettingsActivity.f28972A0 = "90";
                }
                if (playerSettingsActivity.f29018q0.isChecked()) {
                    playerSettingsActivity.f28972A0 = "100";
                }
                if (playerSettingsActivity.f29020s0.isChecked()) {
                    playerSettingsActivity.f28981H0 = str;
                }
                if (playerSettingsActivity.f29019r0.isChecked()) {
                    playerSettingsActivity.f28981H0 = "yes";
                }
                SharedPreferences.Editor editorEdit2 = playerSettingsActivity.f28980H.edit();
                editorEdit2.putString("video_resize_vlc", playerSettingsActivity.f28977F0);
                editorEdit2.putString("video_subtiltes_vlc", playerSettingsActivity.f28975D0);
                editorEdit2.putString("last_volume", playerSettingsActivity.f28972A0);
                editorEdit2.putString("plyer_vlc_buffer", playerSettingsActivity.f28979G0);
                editorEdit2.putString("vlc_hw", playerSettingsActivity.f28981H0);
                editorEdit2.apply();
                editorEdit2.commit();
                break;
            case 2:
                playerSettingsActivity.finish();
                break;
            case 3:
                playerSettingsActivity.finish();
                break;
            case 4:
                SharedPreferences.Editor editorEdit3 = playerSettingsActivity.f28980H.edit();
                editorEdit3.putString("video_resize_exo", "3");
                editorEdit3.putString("video_subtiltes_exo", "yes");
                editorEdit3.putString("last_volume", "90");
                editorEdit3.putString("plyer_exo_buffer", "10000");
                editorEdit3.apply();
                editorEdit3.commit();
                playerSettingsActivity.f28995T.setChecked(true);
                playerSettingsActivity.f29000Y.setChecked(true);
                playerSettingsActivity.f28988M.setChecked(true);
                playerSettingsActivity.f28993R.setChecked(true);
                break;
            default:
                SharedPreferences.Editor editorEdit4 = playerSettingsActivity.f28980H.edit();
                editorEdit4.putString("video_resize_vlc", "4");
                editorEdit4.putString("video_subtiltes_vlc", "yes");
                editorEdit4.putString("last_volume", "90");
                editorEdit4.putString("plyer_vlc_buffer", "300");
                editorEdit4.putString("vlc_hw", "yes");
                editorEdit4.apply();
                editorEdit4.commit();
                playerSettingsActivity.f29012k0.setChecked(true);
                playerSettingsActivity.f29017p0.setChecked(true);
                playerSettingsActivity.f29003b0.setChecked(true);
                playerSettingsActivity.f29011j0.setChecked(true);
                playerSettingsActivity.f29019r0.setChecked(true);
                break;
        }
    }
}
