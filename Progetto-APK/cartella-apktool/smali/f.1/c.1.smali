.class public final Lf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/TrackSelectionView;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lf/c;->G:I

    .line 2
    invoke-direct {p0, p1, v0}, Lf/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf/c;->G:I

    iput-object p1, p0, Lf/c;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "cont"

    const-string v3, "fav"

    const-string v4, "new"

    const-string v5, "streamFormat"

    const-string v6, "/live/"

    const-string v7, "program_desc"

    iget v9, v0, Lf/c;->G:I

    const-string v10, " "

    const-string v11, "VOD"

    const-class v13, Lpe/hf/black20/PlayStreamEPGActivity;

    const-string v14, "TV"

    const-string v15, "."

    const-string v8, "/"

    const-string v12, "ORT_PROFILE_SERVER"

    move-object/from16 v18, v2

    const-string v2, "no"

    move-object/from16 v19, v3

    const-string v3, "direct_source"

    move-object/from16 v20, v4

    const-string v4, "ORT_PROFILE_PASSWORD"

    move-object/from16 v21, v5

    const-string v5, "ORT_PROFILE_USERNAME"

    move-object/from16 v22, v6

    const-string v6, "ORT_CAT_NAME"

    move-object/from16 v23, v13

    const-string v13, "position"

    move-object/from16 v24, v14

    const-string v14, "streamurl"

    move-object/from16 v25, v7

    const-string v7, "stream_id"

    move-object/from16 v26, v13

    const-string v13, ""

    move-object/from16 v27, v10

    const-string v10, "name"

    move-object/from16 v28, v14

    const-string v14, "ORT_WHICH_CAT"

    move-object/from16 v29, v15

    iget-object v15, v0, Lf/c;->H:Ljava/lang/Object;

    packed-switch v9, :pswitch_data_0

    .line 2
    check-cast v15, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :pswitch_0
    check-cast v15, Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :pswitch_1
    move-object v2, v1

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->u0:Ljava/lang/String;

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->v0:Ljava/lang/String;

    .line 6
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v1

    sget-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->u0:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 7
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->u0:Ljava/lang/String;

    check-cast v15, Lpe/hf/black20/epg/EPGActivityXMLTV;

    iget-object v2, v15, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    const v3, 0x7f1301cc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, v15, Lpe/hf/black20/epg/EPGActivityXMLTV;->O:Lc7/d;

    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v2

    const-string v3, "ORT_PROFILE_ID"

    invoke-virtual {v2, v3, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v5

    invoke-virtual {v5, v3, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_live"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc7/d;->v0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v15}, Lpe/hf/black20/epg/EPGActivityXMLTV;->a(Lpe/hf/black20/epg/EPGActivityXMLTV;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v15, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    const-string v2, "Favorites not found!"

    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v15}, Lpe/hf/black20/epg/EPGActivityXMLTV;->a(Lpe/hf/black20/epg/EPGActivityXMLTV;)V

    :goto_0
    return-void

    .line 12
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "finish_alert"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    check-cast v15, Lpe/hf/black20/SettingsMenuActivity;

    invoke-virtual {v15, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 14
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lpe/hf/black20/UsersHistoryActivity;

    invoke-direct {v1, v15, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v15, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    return-void

    .line 17
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 18
    check-cast v15, Lb7/v1;

    iget-object v6, v15, Lb7/v1;->L:Lb7/A1;

    .line 19
    iget-object v9, v6, Lb7/A1;->N0:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v6, Lb7/A1;->X0:Ljava/lang/String;

    .line 20
    invoke-static {v5, v13}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v4, v13}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    iget-object v9, v6, Lb7/A1;->N0:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 23
    iget-object v15, v6, Lb7/A1;->N0:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    const-string v0, "stream_icon"

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 p1, v0

    .line 24
    iget-object v0, v6, Lb7/A1;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lb7/A1;->X0:Ljava/lang/String;

    .line 25
    iget-object v0, v6, Lb7/A1;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    iget-object v3, v6, Lb7/A1;->N0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    move/from16 v16, v1

    const-string v1, "container_extension"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    const-string v3, "ORT_VOD_PORTAL"

    .line 28
    invoke-static {v3, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v17, v1

    .line 29
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object/from16 v17, v1

    .line 30
    invoke-static {v12, v13}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/movie/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v2

    invoke-virtual {v2, v14, v11}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 33
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v6}, LY/s;->l()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lpe/hf/black20/MovieInfoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v3, v6, Lb7/A1;->X0:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, p1

    .line 36
    invoke-virtual {v2, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    invoke-static {v1}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    iget-object v1, v6, Lb7/A1;->X0:Ljava/lang/String;

    move-object/from16 v3, v17

    move-object/from16 v9, v29

    .line 40
    invoke-static {v0, v1, v9, v3}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v28

    .line 41
    invoke-virtual {v2, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    move-object/from16 v11, v28

    .line 42
    invoke-virtual {v2, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    :goto_2
    const-string v0, "ORT_WHICH_PANEL"

    const-string v1, "xtreamcodes"

    const-string v3, "ezserver"

    .line 44
    invoke-static {v0, v1, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 46
    const-string v0, "%20"

    move-object/from16 v3, v27

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "\\\\"

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://:"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 49
    :cond_4
    const-string v0, "poster"

    invoke-virtual {v2, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v6}, LY/s;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    move-object/from16 v3, v27

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 53
    check-cast v15, LD1/q;

    iget-object v1, v15, LD1/q;->M:Ljava/lang/Object;

    check-cast v1, Lb7/A1;

    .line 54
    iget-object v2, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    iget-object v4, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 56
    iget-object v5, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "plot"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 57
    iget-object v5, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "cast"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    iget-object v5, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "director"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    iget-object v5, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "rating"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 60
    iget-object v6, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "backdrop_path"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 61
    iget-object v6, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "cover"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 62
    iget-object v8, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "releaseDate"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 63
    iget-object v9, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v11, "series_id"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 64
    iget-object v12, v1, Lb7/A1;->O0:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v12, "episode_run_time"

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v13

    const-string v15, "SERIES"

    invoke-virtual {v13, v14, v15}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 66
    new-instance v13, Landroid/content/Intent;

    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lpe/hf/black20/SeriesActivity;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {v13, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v13, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v13, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v13, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f13020a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1301d0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1301be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v25

    .line 74
    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_5
    move-object/from16 v0, v26

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    .line 76
    invoke-static {v5, v13}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v4, v13}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v5

    move-object/from16 v1, v24

    invoke-virtual {v5, v14, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 79
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v1

    const-string v5, "RECENT SEARCH"

    invoke-virtual {v1, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    new-instance v5, Landroid/content/Intent;

    check-cast v15, Lb7/k0;

    iget-object v6, v15, Lb7/k0;->N:LY/s;

    check-cast v6, Lb7/A1;

    invoke-virtual {v6}, LY/s;->l()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v14, v23

    invoke-direct {v5, v6, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    iget-object v6, v15, Lb7/k0;->N:LY/s;

    move-object v14, v6

    check-cast v14, Lb7/A1;

    iget-object v14, v14, Lb7/A1;->M0:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v22

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {v3, v8, v4, v8}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    move-object v3, v6

    check-cast v3, Lb7/A1;

    iget-object v3, v3, Lb7/A1;->M0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v6

    check-cast v3, Lb7/A1;

    iget-object v3, v3, Lb7/A1;->C0:Landroid/content/SharedPreferences;

    move-object/from16 v4, v21

    const/4 v8, 0x0

    .line 87
    invoke-static {v3, v4, v8, v2}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v5, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 89
    :cond_6
    move-object v2, v6

    check-cast v2, Lb7/A1;

    iget-object v2, v2, Lb7/A1;->M0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-virtual {v5, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :goto_3
    move-object v2, v6

    check-cast v2, Lb7/A1;

    iget-object v2, v2, Lb7/A1;->M0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    move-object v2, v6

    check-cast v2, Lb7/A1;

    iget-object v2, v2, Lb7/A1;->M0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    check-cast v6, Lb7/A1;

    invoke-virtual {v6}, LY/s;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_6
    move-object/from16 v1, v24

    .line 95
    invoke-static {v14, v1, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 96
    const-string v0, "FAV"

    .line 97
    invoke-static {v14, v1, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 98
    :cond_7
    check-cast v15, Lpe/hf/black20/PlayStreamEPGActivity;

    iget-object v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->j2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 99
    invoke-virtual {v15}, Lpe/hf/black20/PlayStreamEPGActivity;->u()V

    .line 100
    :cond_8
    invoke-virtual {v15}, Lpe/hf/black20/PlayStreamEPGActivity;->W()V

    .line 101
    invoke-virtual {v15}, Lpe/hf/black20/PlayStreamEPGActivity;->V()V

    .line 102
    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    move-object/from16 v3, p0

    goto :goto_5

    .line 103
    :cond_9
    :goto_4
    const-string v0, "XCIPTV_TAG"

    const-string v1, "PlayStreamEPGActivity - hideMediaControlview------called-----."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    check-cast v15, Lpe/hf/black20/PlayStreamEPGActivity;

    const/4 v0, 0x0

    iput-boolean v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->Z0:Z

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->S0:Landroid/os/Handler;

    .line 106
    new-instance v1, Lb7/W0;

    const/4 v2, 0x4

    invoke-direct {v1, v15, v2}, Lb7/W0;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V

    iput-object v1, v15, Lpe/hf/black20/PlayStreamEPGActivity;->W0:Lb7/W0;

    const-wide/16 v2, 0x2710

    .line 107
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    iget-object v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->C1:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 109
    iget-object v1, v15, Lpe/hf/black20/PlayStreamEPGActivity;->z1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->z1:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->z1:Landroid/os/Handler;

    .line 112
    new-instance v1, Lf5/a;

    const/16 v2, 0x8

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2}, Lf5/a;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v15, Lpe/hf/black20/PlayStreamEPGActivity;->C1:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    .line 113
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    invoke-virtual {v15}, Lpe/hf/black20/PlayStreamEPGActivity;->S()V

    .line 115
    const-string v0, "1"

    iput-object v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->j0:Ljava/lang/String;

    .line 116
    iget-object v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->r0:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, v15, Lpe/hf/black20/PlayStreamEPGActivity;->v0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x258

    .line 120
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ll/d;

    invoke-direct {v1, v3, v2}, Ll/d;-><init>(Ljava/lang/Object;I)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_5
    return-void

    :pswitch_7
    move-object v3, v0

    .line 122
    sget-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->F0:Z

    if-eqz v0, :cond_b

    .line 123
    check-cast v15, Lpe/hf/black20/ORPlayerMainActivity;

    invoke-virtual {v15}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    goto :goto_6

    .line 124
    :cond_b
    check-cast v15, Lpe/hf/black20/ORPlayerMainActivity;

    invoke-virtual {v15}, Lpe/hf/black20/ORPlayerMainActivity;->y()V

    :goto_6
    return-void

    :pswitch_8
    move-object v3, v0

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 126
    check-cast v15, Lb7/i0;

    iget-object v1, v15, Lb7/i0;->L:Lb7/t0;

    move-object/from16 v2, v20

    invoke-static {v1, v2, v0}, Lb7/t0;->V(Lb7/t0;Ljava/lang/String;I)V

    return-void

    :pswitch_9
    move-object v3, v0

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 128
    check-cast v15, Lb7/i0;

    iget-object v1, v15, Lb7/i0;->L:Lb7/t0;

    move-object/from16 v2, v19

    invoke-static {v1, v2, v0}, Lb7/t0;->V(Lb7/t0;Ljava/lang/String;I)V

    return-void

    :pswitch_a
    move-object v3, v0

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 130
    check-cast v15, Lb7/i0;

    iget-object v1, v15, Lb7/i0;->L:Lb7/t0;

    move-object/from16 v2, v18

    invoke-static {v1, v2, v0}, Lb7/t0;->V(Lb7/t0;Ljava/lang/String;I)V

    return-void

    :pswitch_b
    move-object v3, v0

    move-object/from16 v2, v20

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    check-cast v15, Lb7/m0;

    iget-object v1, v15, Lb7/m0;->L:Lb7/t0;

    invoke-static {v1, v2, v0}, Lb7/t0;->U(Lb7/t0;Ljava/lang/String;I)V

    return-void

    :pswitch_c
    move-object v3, v0

    move-object/from16 v2, v19

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    check-cast v15, Lb7/m0;

    iget-object v1, v15, Lb7/m0;->L:Lb7/t0;

    invoke-static {v1, v2, v0}, Lb7/t0;->U(Lb7/t0;Ljava/lang/String;I)V

    return-void

    :pswitch_d
    move-object v3, v0

    move-object/from16 v2, v18

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 136
    check-cast v15, Lb7/m0;

    iget-object v1, v15, Lb7/m0;->L:Lb7/t0;

    invoke-static {v1, v2, v0}, Lb7/t0;->U(Lb7/t0;Ljava/lang/String;I)V

    return-void

    :pswitch_e
    move-object/from16 v18, v10

    move-object/from16 v2, v21

    move-object/from16 v0, v22

    move-object/from16 v10, v23

    move-object/from16 v1, v24

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    .line 137
    invoke-static {v5, v13}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-static {v4, v13}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v11

    invoke-virtual {v11, v14, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 140
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v1

    check-cast v15, Lb7/k0;

    iget-object v11, v15, Lb7/k0;->N:LY/s;

    check-cast v11, Lb7/t0;

    invoke-virtual {v11}, LY/s;->l()Landroid/content/Context;

    move-result-object v11

    const v14, 0x7f1301cc

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 142
    new-instance v6, Landroid/content/Intent;

    iget-object v11, v15, Lb7/k0;->N:LY/s;

    move-object v14, v11

    check-cast v14, Lb7/t0;

    invoke-virtual {v14}, LY/s;->l()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v6, v14, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    move-object v10, v11

    check-cast v10, Lb7/t0;

    iget-object v10, v10, Lb7/t0;->f1:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {v3, v8, v4, v8}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    move-object v3, v11

    check-cast v3, Lb7/t0;

    iget-object v3, v3, Lb7/t0;->f1:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v11

    check-cast v3, Lb7/t0;

    iget-object v3, v3, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    .line 148
    invoke-static {v3, v2, v4, v0}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v28

    .line 149
    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    :cond_c
    move-object/from16 v2, v28

    .line 150
    move-object v0, v11

    check-cast v0, Lb7/t0;

    iget-object v0, v0, Lb7/t0;->f1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    :goto_7
    move-object v0, v11

    check-cast v0, Lb7/t0;

    iget-object v0, v0, Lb7/t0;->f1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object/from16 v4, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    move-object v0, v11

    check-cast v0, Lb7/t0;

    iget-object v0, v0, Lb7/t0;->f1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    check-cast v11, Lb7/t0;

    invoke-virtual {v11}, LY/s;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_f
    move-object v4, v10

    move-object/from16 v10, v23

    move-object/from16 v3, v25

    move-object/from16 v1, v26

    move-object/from16 v0, v28

    .line 156
    new-instance v5, Landroid/content/Intent;

    check-cast v15, Lpe/hf/black20/MovieInfoActivity;

    iget-object v6, v15, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    invoke-direct {v5, v6, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v6

    invoke-virtual {v6, v14, v11}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 158
    const-string v6, "isTrailer"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v2, v15, Lpe/hf/black20/MovieInfoActivity;->W:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v0, v15, Lpe/hf/black20/MovieInfoActivity;->U:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v0, v15, Lpe/hf/black20/MovieInfoActivity;->V:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v0, v15, Lpe/hf/black20/MovieInfoActivity;->X:Ljava/lang/String;

    const-string v2, "category_list"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v0, v15, Lpe/hf/black20/MovieInfoActivity;->Z:Ljava/lang/String;

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v0, v15, Lpe/hf/black20/MovieInfoActivity;->Y:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v0, v15, Lpe/hf/black20/MovieInfoActivity;->j0:Ljava/lang/String;

    const-string v1, "movie_poster_from_list"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v0, v15, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    return-void

    .line 168
    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    check-cast v15, Lpe/hf/black20/MaintenanceActivity;

    const-class v1, Lpe/hf/black20/SplashActivity;

    invoke-direct {v0, v15, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    invoke-virtual {v15, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    return-void

    .line 171
    :pswitch_11
    check-cast v15, Lpe/hf/black20/LoginActivity;

    iget-object v0, v15, Lpe/hf/black20/LoginActivity;->L:Lpe/hf/black20/LoginActivity;

    invoke-static {v0}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 172
    iget-object v0, v15, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    const-string v1, "btn_signup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 175
    invoke-virtual {v15, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_d
    const v0, 0x7f13016a

    .line 176
    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v15, Lpe/hf/black20/LoginActivity;->L:Lpe/hf/black20/LoginActivity;

    invoke-static {v1, v0}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    :goto_8
    return-void

    .line 177
    :pswitch_12
    new-instance v0, Lk3/j;

    check-cast v15, Lpe/hf/black20/DeviceStatus;

    invoke-direct {v0, v15}, Lk3/j;-><init>(Lpe/hf/black20/DeviceStatus;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 178
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    check-cast v15, Lpe/hf/black20/CatchupActivity;

    iget-object v1, v15, Lpe/hf/black20/CatchupActivity;->c0:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v15, Lpe/hf/black20/CatchupActivity;->W:Ljava/lang/String;

    .line 180
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 181
    invoke-virtual {v15}, Lpe/hf/black20/CatchupActivity;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lpe/hf/black20/CatchupActivity;->X:Ljava/lang/String;

    goto :goto_a

    .line 182
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lpe/hf/black20/CatchupActivity;->c0:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 183
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    const/4 v8, 0x0

    .line 186
    :goto_9
    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lpe/hf/black20/CatchupActivity;->X:Ljava/lang/String;

    .line 188
    :goto_a
    new-instance v0, Lb7/g;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v1}, Lb7/g;-><init>(Lpe/hf/black20/CatchupActivity;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 189
    :pswitch_14
    check-cast v15, Ln3/k;

    const/4 v0, 0x2

    iput v0, v15, Ln3/k;->c0:I

    iget-object v0, v15, Ln3/k;->H:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 190
    :pswitch_15
    check-cast v15, Landroidx/preference/Preference;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroidx/preference/Preference;->f(Landroid/view/View;)V

    return-void

    :pswitch_16
    move-object v0, v1

    .line 191
    check-cast v15, Landroidx/media3/ui/TrackSelectionView;

    .line 192
    iget-object v1, v15, Landroidx/media3/ui/TrackSelectionView;->I:Landroid/widget/CheckedTextView;

    .line 193
    iget-object v2, v15, Landroidx/media3/ui/TrackSelectionView;->M:Ljava/util/HashMap;

    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    .line 194
    iput-boolean v1, v15, Landroidx/media3/ui/TrackSelectionView;->R:Z

    .line 195
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_e

    .line 196
    :cond_10
    iget-object v1, v15, Landroidx/media3/ui/TrackSelectionView;->J:Landroid/widget/CheckedTextView;

    if-ne v0, v1, :cond_11

    const/4 v1, 0x0

    .line 197
    iput-boolean v1, v15, Landroidx/media3/ui/TrackSelectionView;->R:Z

    .line 198
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_e

    :cond_11
    const/4 v1, 0x0

    .line 199
    iput-boolean v1, v15, Landroidx/media3/ui/TrackSelectionView;->R:Z

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    check-cast v3, LD1/Q;

    .line 203
    iget-object v4, v3, LD1/Q;->a:Lm0/l0;

    iget-object v5, v4, Lm0/l0;->b:Lm0/g0;

    .line 204
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm0/h0;

    .line 205
    iget v3, v3, LD1/Q;->b:I

    if-nez v6, :cond_13

    .line 206
    iget-boolean v0, v15, Landroidx/media3/ui/TrackSelectionView;->O:Z

    if-nez v0, :cond_12

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 207
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 208
    :cond_12
    new-instance v0, Lm0/h0;

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lm0/h0;-><init>(Lm0/g0;Ljava/util/List;)V

    .line 210
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 211
    :cond_13
    new-instance v7, Ljava/util/ArrayList;

    iget-object v6, v6, Lm0/h0;->b:Lz4/H;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 213
    iget-boolean v6, v15, Landroidx/media3/ui/TrackSelectionView;->N:Z

    if-eqz v6, :cond_14

    iget-boolean v4, v4, Lm0/l0;->c:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_b

    :cond_14
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_16

    .line 214
    iget-boolean v6, v15, Landroidx/media3/ui/TrackSelectionView;->O:Z

    if-eqz v6, :cond_15

    iget-object v6, v15, Landroidx/media3/ui/TrackSelectionView;->L:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_15

    goto :goto_c

    :cond_15
    const/4 v8, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v8, 0x1

    :goto_d
    if-eqz v0, :cond_18

    if-eqz v8, :cond_18

    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 217
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 218
    :cond_17
    new-instance v0, Lm0/h0;

    invoke-direct {v0, v5, v7}, Lm0/h0;-><init>(Lm0/g0;Ljava/util/List;)V

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_18
    if-nez v0, :cond_1a

    if-eqz v4, :cond_19

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Lm0/h0;

    invoke-direct {v0, v5, v7}, Lm0/h0;-><init>(Lm0/g0;Ljava/util/List;)V

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 221
    :cond_19
    new-instance v0, Lm0/h0;

    .line 222
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lm0/h0;-><init>(Lm0/g0;Ljava/util/List;)V

    .line 223
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_1a
    :goto_e
    invoke-virtual {v15}, Landroidx/media3/ui/TrackSelectionView;->b()V

    .line 225
    iget-object v0, v15, Landroidx/media3/ui/TrackSelectionView;->T:LD1/S;

    if-eqz v0, :cond_1b

    .line 226
    invoke-virtual {v15}, Landroidx/media3/ui/TrackSelectionView;->getIsDisabled()Z

    move-result v1

    invoke-virtual {v15}, Landroidx/media3/ui/TrackSelectionView;->getOverrides()Ljava/util/Map;

    move-result-object v2

    check-cast v0, Le7/d$a;

    .line 227
    iput-boolean v1, v0, Le7/d$a;->F0:Z

    .line 228
    iput-object v2, v0, Le7/d$a;->G0:Ljava/util/Map;

    :cond_1b
    return-void

    .line 229
    :pswitch_17
    check-cast v15, Landroidx/leanback/widget/SearchBar;

    .line 230
    iget-boolean v0, v15, Landroidx/leanback/widget/SearchBar;->e0:Z

    if-eqz v0, :cond_1c

    .line 231
    invoke-virtual {v15}, Landroidx/leanback/widget/SearchBar;->b()V

    goto :goto_f

    .line 232
    :cond_1c
    invoke-virtual {v15}, Landroidx/leanback/widget/SearchBar;->a()V

    :goto_f
    return-void

    :pswitch_18
    const/4 v1, 0x0

    .line 233
    check-cast v15, Landroidx/appcompat/widget/Toolbar;

    .line 234
    iget-object v0, v15, Landroidx/appcompat/widget/Toolbar;->u0:Ll/j1;

    if-nez v0, :cond_1d

    move-object v15, v1

    goto :goto_10

    .line 235
    :cond_1d
    iget-object v15, v0, Ll/j1;->H:Lk/q;

    :goto_10
    if-eqz v15, :cond_1e

    .line 236
    invoke-virtual {v15}, Lk/q;->collapseActionView()Z

    :cond_1e
    return-void

    :pswitch_19
    move-object v0, v1

    const/4 v1, 0x0

    .line 237
    check-cast v15, Lf/j;

    iget-object v2, v15, Lf/j;->j:Landroid/widget/Button;

    if-ne v0, v2, :cond_1f

    iget-object v2, v15, Lf/j;->l:Landroid/os/Message;

    if-eqz v2, :cond_1f

    .line 238
    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_11

    .line 239
    :cond_1f
    iget-object v2, v15, Lf/j;->n:Landroid/widget/Button;

    if-ne v0, v2, :cond_20

    iget-object v2, v15, Lf/j;->p:Landroid/os/Message;

    if-eqz v2, :cond_20

    .line 240
    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_11

    .line 241
    :cond_20
    iget-object v2, v15, Lf/j;->r:Landroid/widget/Button;

    if-ne v0, v2, :cond_21

    iget-object v0, v15, Lf/j;->t:Landroid/os/Message;

    if-eqz v0, :cond_21

    .line 242
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_11

    :cond_21
    move-object v0, v1

    :goto_11
    if-eqz v0, :cond_22

    .line 243
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    :cond_22
    iget-object v0, v15, Lf/j;->J:Lf/h;

    iget-object v1, v15, Lf/j;->b:Lf/M;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
