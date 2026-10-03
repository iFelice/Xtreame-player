.class public final Lcom/google/android/gms/internal/ads/Ov;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lcom/google/android/gms/internal/ads/Gd;

.field public final B:Ljava/lang/String;

.field public final C:Lorg/json/JSONObject;

.field public final D:Lorg/json/JSONObject;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:Z

.field public final Q:I

.field public final R:I

.field public final S:Z

.field public final T:Z

.field public final U:Ljava/lang/String;

.field public final V:Lcom/google/android/gms/internal/ads/Xu;

.field public final W:Z

.field public final X:Z

.field public final Y:I

.field public final Z:Ljava/lang/String;

.field public final a:Ljava/util/List;

.field public final a0:I

.field public final b:I

.field public final b0:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final c0:Z

.field public final d:Ljava/util/List;

.field public final d0:Lcom/google/android/gms/internal/ads/nc;

.field public final e:I

.field public final e0:Ll3/e1;

.field public final f:Ljava/util/List;

.field public final f0:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final g0:Z

.field public final h:Ljava/util/List;

.field public final h0:Lorg/json/JSONObject;

.field public final i:Ljava/util/List;

.field public final i0:Z

.field public final j:Ljava/lang/String;

.field public final j0:Lorg/json/JSONObject;

.field public final k:Ljava/lang/String;

.field public final k0:Z

.field public final l:Lcom/google/android/gms/internal/ads/ld;

.field public final l0:Ljava/lang/String;

.field public final m:Ljava/util/List;

.field public final m0:Z

.field public final n:Ljava/util/List;

.field public final n0:Ljava/lang/String;

.field public final o:Ljava/util/List;

.field public final o0:Ljava/lang/String;

.field public final p:Ljava/util/List;

.field public final p0:Ljava/lang/String;

.field public final q:I

.field public final q0:Z

.field public final r:Ljava/util/List;

.field public final r0:Z

.field public final s:Lcom/google/android/gms/internal/ads/Rv;

.field public final s0:I

.field public final t:Ljava/util/List;

.field public final t0:Ljava/lang/String;

.field public final u:Ljava/util/List;

.field public final u0:Ljava/util/AbstractCollection;

.field public final v:Lorg/json/JSONObject;

.field public final v0:Z

.field public final w:Ljava/lang/String;

.field public final w0:Ljava/util/HashMap;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 100

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 15
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    new-instance v16, Lorg/json/JSONObject;

    .line 16
    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    new-instance v17, Lorg/json/JSONObject;

    .line 17
    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    new-instance v18, Lorg/json/JSONObject;

    .line 18
    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    new-instance v19, Lorg/json/JSONObject;

    .line 19
    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    new-instance v20, Lorg/json/JSONObject;

    .line 20
    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 21
    sget-object v21, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 22
    sget-object v21, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 23
    new-instance v22, Ljava/util/HashMap;

    .line 24
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v23, v1

    const/16 v24, -0x1

    const-string v1, ""

    move-object/from16 v35, v1

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v40, v38

    move-object/from16 v51, v40

    move-object/from16 v55, v51

    move-object/from16 v57, v55

    move-object/from16 v61, v57

    move-object/from16 v63, v61

    move-object/from16 v64, v63

    move-object/from16 v65, v64

    move-object/from16 v66, v65

    move-object/from16 v67, v66

    move-object/from16 v73, v67

    move-object/from16 v74, v73

    move-object/from16 v75, v74

    move-object/from16 v79, v75

    move-object/from16 v25, v15

    move-object/from16 v26, v16

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    move-object/from16 v30, v20

    move-object/from16 v31, v21

    move-object/from16 v32, v22

    const/4 v15, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, -0x1

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v56, -0x1

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v80, 0x0

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move-object/from16 v16, v14

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, v79

    move-object v13, v12

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v23

    .line 26
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v21

    move-object/from16 v22, v10

    if-eqz v21, :cond_60

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_0

    move-object/from16 v23, v1

    goto :goto_1

    :cond_0
    move-object/from16 v23, v21

    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v21

    const/16 v83, 0x6

    const/16 v84, 0x7

    const/16 v85, 0x2

    const/16 v86, 0x4

    const/16 v87, 0x5

    sparse-switch v21, :sswitch_data_0

    move-object/from16 v88, v9

    :goto_2
    const/4 v9, -0x1

    goto/16 :goto_4

    :sswitch_0
    const-string v10, "render_serially"

    move-object/from16 v88, v9

    move-object/from16 v9, v23

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :goto_3
    goto :goto_2

    :cond_1
    const/16 v9, 0x4c

    goto/16 :goto_4

    :sswitch_1
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "manual_tracking_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    const/16 v9, 0x4b

    goto/16 :goto_4

    :sswitch_2
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "rule_line_external_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    const/16 v9, 0x4a

    goto/16 :goto_4

    :sswitch_3
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_analytics_logging_enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    const/16 v9, 0x49

    goto/16 :goto_4

    :sswitch_4
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "renderers"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    const/16 v9, 0x48

    goto/16 :goto_4

    :sswitch_5
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "use_third_party_container_height"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    const/16 v9, 0x47

    goto/16 :goto_4

    :sswitch_6
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "video_reward_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_3

    :cond_7
    const/16 v9, 0x46

    goto/16 :goto_4

    :sswitch_7
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_network_class_name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    const/16 v9, 0x45

    goto/16 :goto_4

    :sswitch_8
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "video_start_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v9, 0x44

    goto/16 :goto_4

    :sswitch_9
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "bid_response"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v9, 0x43

    goto/16 :goto_4

    :sswitch_a
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_source_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v9, 0x42

    goto/16 :goto_4

    :sswitch_b
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_collapsible"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_3

    :cond_c
    const/16 v9, 0x41

    goto/16 :goto_4

    :sswitch_c
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "allow_pub_owned_ad_view"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_3

    :cond_d
    const/16 v9, 0x40

    goto/16 :goto_4

    :sswitch_d
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "cache_hit_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_3

    :cond_e
    const/16 v9, 0x3f

    goto/16 :goto_4

    :sswitch_e
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "adapter_response_info_key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto/16 :goto_3

    :cond_f
    const/16 v9, 0x3e

    goto/16 :goto_4

    :sswitch_f
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "rewards"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_3

    :cond_10
    const/16 v9, 0x3d

    goto/16 :goto_4

    :sswitch_10
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "transaction_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_3

    :cond_11
    const/16 v9, 0x3c

    goto/16 :goto_4

    :sswitch_11
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "analytics_event_name_to_parameters_map"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto/16 :goto_3

    :cond_12
    const/16 v9, 0x3b

    goto/16 :goto_4

    :sswitch_12
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "impression_type"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_3

    :cond_13
    const/16 v9, 0x3a

    goto/16 :goto_4

    :sswitch_13
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "container_sizes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto/16 :goto_3

    :cond_14
    const/16 v9, 0x39

    goto/16 :goto_4

    :sswitch_14
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "debug_dialog_string"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_3

    :cond_15
    const/16 v9, 0x38

    goto/16 :goto_4

    :sswitch_15
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "presentation_error_timeout_ms"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto/16 :goto_3

    :cond_16
    const/16 v9, 0x37

    goto/16 :goto_4

    :sswitch_16
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "consent_form_action_identifier"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto/16 :goto_3

    :cond_17
    const/16 v9, 0x36

    goto/16 :goto_4

    :sswitch_17
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_closable_area_disabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto/16 :goto_3

    :cond_18
    const/16 v9, 0x35

    goto/16 :goto_4

    :sswitch_18
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_load_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    goto/16 :goto_3

    :cond_19
    const/16 v9, 0x34

    goto/16 :goto_4

    :sswitch_19
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "qdata"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto/16 :goto_3

    :cond_1a
    const/16 v9, 0x33

    goto/16 :goto_4

    :sswitch_1a
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "render_test_label"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    goto/16 :goto_3

    :cond_1b
    const/16 v9, 0x32

    goto/16 :goto_4

    :sswitch_1b
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "request_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    goto/16 :goto_3

    :cond_1c
    const/16 v9, 0x31

    goto/16 :goto_4

    :sswitch_1c
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    goto/16 :goto_3

    :cond_1d
    const/16 v9, 0x30

    goto/16 :goto_4

    :sswitch_1d
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    goto/16 :goto_3

    :cond_1e
    const/16 v9, 0x2f

    goto/16 :goto_4

    :sswitch_1e
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    goto/16 :goto_3

    :cond_1f
    const/16 v9, 0x2e

    goto/16 :goto_4

    :sswitch_1f
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "allow_custom_click_gesture"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto/16 :goto_3

    :cond_20
    const/16 v9, 0x2d

    goto/16 :goto_4

    :sswitch_20
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_offline_ad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    goto/16 :goto_3

    :cond_21
    const/16 v9, 0x2c

    goto/16 :goto_4

    :sswitch_21
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "native_required_asset_viewability"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    goto/16 :goto_3

    :cond_22
    const/16 v9, 0x2b

    goto/16 :goto_4

    :sswitch_22
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "watermark"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    goto/16 :goto_3

    :cond_23
    const/16 v9, 0x2a

    goto/16 :goto_4

    :sswitch_23
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "force_disable_hardware_acceleration"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    goto/16 :goto_3

    :cond_24
    const/16 v9, 0x29

    goto/16 :goto_4

    :sswitch_24
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_close_button_enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    goto/16 :goto_3

    :cond_25
    const/16 v9, 0x28

    goto/16 :goto_4

    :sswitch_25
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "content_url"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    goto/16 :goto_3

    :cond_26
    const/16 v9, 0x27

    goto/16 :goto_4

    :sswitch_26
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_close_time_ms"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    goto/16 :goto_3

    :cond_27
    const/16 v9, 0x26

    goto/16 :goto_4

    :sswitch_27
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "render_timeout_ms"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    goto/16 :goto_3

    :cond_28
    const/16 v9, 0x25

    goto/16 :goto_4

    :sswitch_28
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "rtb_native_required_assets"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    goto/16 :goto_3

    :cond_29
    const/16 v9, 0x24

    goto/16 :goto_4

    :sswitch_29
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "imp_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    goto/16 :goto_3

    :cond_2a
    const/16 v9, 0x23

    goto/16 :goto_4

    :sswitch_2a
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "safe_browsing"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    goto/16 :goto_3

    :cond_2b
    const/16 v9, 0x22

    goto/16 :goto_4

    :sswitch_2b
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "late_load_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    goto/16 :goto_3

    :cond_2c
    const/16 v9, 0x21

    goto/16 :goto_4

    :sswitch_2c
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "click_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    goto/16 :goto_3

    :cond_2d
    const/16 v9, 0x20

    goto/16 :goto_4

    :sswitch_2d
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_source_instance_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    goto/16 :goto_3

    :cond_2e
    const/16 v9, 0x1f

    goto/16 :goto_4

    :sswitch_2e
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "valid_from_timestamp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto/16 :goto_3

    :cond_2f
    const/16 v9, 0x1e

    goto/16 :goto_4

    :sswitch_2f
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "active_view"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    goto/16 :goto_3

    :cond_30
    const/16 v9, 0x1d

    goto/16 :goto_4

    :sswitch_30
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "video_complete_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    goto/16 :goto_3

    :cond_31
    const/16 v9, 0x1c

    goto/16 :goto_4

    :sswitch_31
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "allocation_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    goto/16 :goto_3

    :cond_32
    const/16 v9, 0x1b

    goto/16 :goto_4

    :sswitch_32
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "fill_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    goto/16 :goto_3

    :cond_33
    const/16 v9, 0x1a

    goto/16 :goto_4

    :sswitch_33
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_scroll_aware"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    goto/16 :goto_3

    :cond_34
    const/16 v9, 0x19

    goto/16 :goto_4

    :sswitch_34
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_type"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    goto/16 :goto_3

    :cond_35
    const/16 v9, 0x18

    goto/16 :goto_4

    :sswitch_35
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "presentation_error_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    goto/16 :goto_3

    :cond_36
    const/16 v9, 0x17

    goto/16 :goto_4

    :sswitch_36
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "allow_pub_rendered_attribution"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    goto/16 :goto_3

    :cond_37
    const/16 v9, 0x16

    goto/16 :goto_4

    :sswitch_37
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_event_value"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38

    goto/16 :goto_3

    :cond_38
    const/16 v9, 0x15

    goto/16 :goto_4

    :sswitch_38
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "extras"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    goto/16 :goto_3

    :cond_39
    const/16 v9, 0x14

    goto/16 :goto_4

    :sswitch_39
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "test_mode_enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    goto/16 :goto_3

    :cond_3a
    const/16 v9, 0x13

    goto/16 :goto_4

    :sswitch_3a
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "adapters"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3b

    goto/16 :goto_3

    :cond_3b
    const/16 v9, 0x12

    goto/16 :goto_4

    :sswitch_3b
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_sizes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3c

    goto/16 :goto_3

    :cond_3c
    const/16 v9, 0x11

    goto/16 :goto_4

    :sswitch_3c
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_cover"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    goto/16 :goto_3

    :cond_3d
    const/16 v9, 0x10

    goto/16 :goto_4

    :sswitch_3d
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "showable_impression_type"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    goto/16 :goto_3

    :cond_3e
    const/16 v9, 0xf

    goto/16 :goto_4

    :sswitch_3e
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "buffer_click_url_as_ready_to_ping"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    goto/16 :goto_3

    :cond_3f
    const/16 v9, 0xe

    goto/16 :goto_4

    :sswitch_3f
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "enable_omid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    goto/16 :goto_3

    :cond_40
    const/16 v9, 0xd

    goto/16 :goto_4

    :sswitch_40
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "orientation"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    goto/16 :goto_3

    :cond_41
    const/16 v9, 0xc

    goto/16 :goto_4

    :sswitch_41
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_custom_close_blocked"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_42

    goto/16 :goto_3

    :cond_42
    const/16 v9, 0xb

    goto/16 :goto_4

    :sswitch_42
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "nofill_urls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    goto/16 :goto_3

    :cond_43
    const/16 v9, 0xa

    goto/16 :goto_4

    :sswitch_43
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "backend_query_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_44

    goto/16 :goto_3

    :cond_44
    const/16 v9, 0x9

    goto/16 :goto_4

    :sswitch_44
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_interscroller"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_45

    goto/16 :goto_3

    :cond_45
    const/16 v9, 0x8

    goto/16 :goto_4

    :sswitch_45
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_source_name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_46

    goto/16 :goto_3

    :cond_46
    const/4 v9, 0x7

    goto/16 :goto_4

    :sswitch_46
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "parallel_key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    goto/16 :goto_3

    :cond_47
    const/4 v9, 0x6

    goto/16 :goto_4

    :sswitch_47
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "play_prewarm_options"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    goto/16 :goto_3

    :cond_48
    const/4 v9, 0x5

    goto :goto_4

    :sswitch_48
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "is_consent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    goto/16 :goto_3

    :cond_49
    const/4 v9, 0x4

    goto :goto_4

    :sswitch_49
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "recursive_server_response_data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    goto/16 :goto_3

    :cond_4a
    const/4 v9, 0x3

    goto :goto_4

    :sswitch_4a
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "omid_settings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4b

    goto/16 :goto_3

    :cond_4b
    const/4 v9, 0x2

    goto :goto_4

    :sswitch_4b
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "debug_signals"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    goto/16 :goto_3

    :cond_4c
    const/4 v9, 0x1

    goto :goto_4

    :sswitch_4c
    move-object/from16 v88, v9

    move-object/from16 v9, v23

    const-string v10, "ad_source_instance_name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d

    goto/16 :goto_3

    :cond_4d
    const/4 v9, 0x0

    :goto_4
    packed-switch v9, :pswitch_data_0

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    :goto_5
    move-object/from16 v21, v1

    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v11, 0x0

    move-object/from16 v12, p1

    goto/16 :goto_12

    .line 29
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v80

    :goto_6
    move-object/from16 v10, v22

    move-object/from16 v9, v88

    goto/16 :goto_0

    .line 30
    :pswitch_1
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v19

    goto :goto_6

    .line 31
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v61

    goto :goto_6

    .line 32
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v52

    goto :goto_6

    .line 33
    :pswitch_4
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_6

    .line 34
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v58

    goto :goto_6

    .line 35
    :pswitch_6
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_6

    .line 36
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v63

    goto :goto_6

    .line 37
    :pswitch_8
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_6

    .line 38
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v51

    goto :goto_6

    .line 39
    :pswitch_a
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->l6:Lcom/google/android/gms/internal/ads/J7;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    sget-object v10, Ll3/q;->d:Ll3/q;

    iget-object v10, v10, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 41
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v9

    .line 42
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v65

    goto :goto_6

    .line 44
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 45
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v76

    goto :goto_6

    .line 46
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v42

    goto :goto_6

    .line 47
    :pswitch_d
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    goto :goto_5

    .line 48
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v75

    goto :goto_6

    .line 49
    :pswitch_f
    invoke-static/range {p1 .. p1}, LQ3/b;->V(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ld;->i(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/ld;

    move-result-object v11

    goto :goto_6

    .line 50
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 51
    :pswitch_11
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->X:Lcom/google/android/gms/internal/ads/J7;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    sget-object v10, Ll3/q;->d:Ll3/q;

    iget-object v10, v10, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 53
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v9

    .line 54
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 55
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 57
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v23, v11

    new-instance v11, Ljava/util/HashMap;

    .line 59
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 61
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4f

    move-object/from16 v89, v12

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v90, v13

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    .line 64
    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v89

    move-object/from16 v13, v90

    goto :goto_8

    :cond_4f
    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 66
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v23

    goto :goto_7

    :cond_50
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    move-object/from16 v32, v9

    :goto_9
    move-object/from16 v10, v22

    move-object/from16 v11, v23

    :goto_a
    move-object/from16 v9, v88

    :goto_b
    move-object/from16 v12, v89

    :goto_c
    move-object/from16 v13, v90

    goto/16 :goto_0

    :cond_51
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v12, p1

    :goto_d
    move-object/from16 v21, v1

    const/4 v11, 0x0

    goto/16 :goto_12

    :pswitch_12
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    if-eqz v9, :cond_53

    const/4 v10, 0x1

    if-eq v9, v10, :cond_53

    const/4 v11, 0x3

    if-ne v9, v11, :cond_52

    goto :goto_e

    :cond_52
    const/4 v14, 0x0

    goto :goto_9

    :cond_53
    :goto_e
    move v14, v9

    goto :goto_9

    :pswitch_13
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Pv;->a(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v18

    goto/16 :goto_6

    :pswitch_14
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_6

    :pswitch_15
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v33

    goto/16 :goto_6

    :pswitch_16
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v78

    goto/16 :goto_6

    :pswitch_17
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v47

    goto/16 :goto_6

    :pswitch_18
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 75
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_6

    :pswitch_19
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_6

    :pswitch_1a
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v44

    goto/16 :goto_6

    :pswitch_1b
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v73

    goto/16 :goto_6

    :pswitch_1c
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 79
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v25

    goto/16 :goto_6

    :pswitch_1d
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_6

    :pswitch_1e
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    .line 81
    new-instance v9, Lcom/google/android/gms/internal/ads/Rv;

    move-object/from16 v12, p1

    .line 82
    invoke-direct {v9, v12}, Lcom/google/android/gms/internal/ads/Rv;-><init>(Landroid/util/JsonReader;)V

    move-object/from16 v34, v9

    :goto_f
    move-object/from16 v10, v22

    :goto_10
    move-object/from16 v9, v88

    move-object/from16 v12, v89

    goto/16 :goto_0

    :pswitch_1f
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v43

    goto :goto_f

    :pswitch_20
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v68

    goto :goto_f

    :pswitch_21
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v69

    goto :goto_f

    :pswitch_22
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v55

    goto :goto_f

    :pswitch_23
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v71

    goto :goto_f

    :pswitch_24
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    goto/16 :goto_d

    :pswitch_25
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v70

    goto :goto_f

    :pswitch_26
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v56

    goto :goto_f

    :pswitch_27
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v49

    goto :goto_f

    :pswitch_28
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 92
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v30

    goto/16 :goto_f

    :pswitch_29
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 93
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v4

    goto/16 :goto_f

    :pswitch_2a
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 94
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v9

    .line 95
    const-string v10, "click_string"

    invoke-virtual {v9, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 96
    const-string v10, "report_url"

    invoke-virtual {v9, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 97
    const-string v10, "rendered_ad_enabled"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 98
    const-string v10, "non_malicious_reporting_enabled"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 99
    const-string v10, "allowed_headers"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v13, 0x0

    invoke-static {v13, v10}, LQ3/b;->L(Ljava/util/ArrayList;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v96

    const-string v10, "webview_permissions"

    .line 100
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v13, v10}, LQ3/b;->L(Ljava/util/ArrayList;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v99

    const-string v10, "protection_enabled"

    .line 101
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 102
    const-string v10, "malicious_reporting_enabled"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v98

    new-instance v39, Lcom/google/android/gms/internal/ads/Gd;

    move-object/from16 v91, v39

    .line 103
    invoke-direct/range {v91 .. v99}, Lcom/google/android/gms/internal/ads/Gd;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZZLjava/util/List;)V

    goto/16 :goto_9

    :pswitch_2b
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 104
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v31

    :goto_11
    move-object/from16 v10, v22

    goto/16 :goto_a

    :pswitch_2c
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 105
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_11

    :pswitch_2d
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 106
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->l6:Lcom/google/android/gms/internal/ads/J7;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    sget-object v10, Ll3/q;->d:Ll3/q;

    iget-object v10, v10, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 108
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v9

    .line 109
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v67

    goto/16 :goto_9

    .line 111
    :cond_54
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_d

    :pswitch_2e
    move-object/from16 v12, p1

    move-object/from16 v23, v11

    move-object/from16 v90, v13

    const/4 v13, 0x0

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    move-object/from16 v10, v22

    move-object/from16 v9, v88

    goto/16 :goto_c

    :pswitch_2f
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 113
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v38

    goto :goto_11

    :pswitch_30
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 114
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_11

    :pswitch_31
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v35

    goto :goto_11

    :pswitch_32
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 116
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v10, v22

    goto/16 :goto_b

    :pswitch_33
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v53

    goto/16 :goto_11

    :pswitch_34
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 119
    const-string v15, "banner"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_55

    const/4 v15, 0x1

    goto/16 :goto_9

    :cond_55
    const-string v10, "interstitial"

    .line 120
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    const/4 v15, 0x2

    goto/16 :goto_9

    :cond_56
    const-string v10, "native_express"

    .line 121
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    const/4 v15, 0x3

    goto/16 :goto_9

    :cond_57
    const-string v10, "native"

    .line 122
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    const/4 v15, 0x4

    goto/16 :goto_9

    :cond_58
    const-string v10, "rewarded"

    .line 123
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    const/4 v15, 0x5

    goto/16 :goto_9

    :cond_59
    const-string v10, "app_open_ad"

    .line 124
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    const/4 v15, 0x6

    goto/16 :goto_9

    :cond_5a
    const-string v10, "rewarded_interstitial"

    .line 125
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5b

    const/4 v15, 0x7

    goto/16 :goto_9

    :cond_5b
    const/4 v15, 0x0

    goto/16 :goto_9

    :pswitch_35
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 126
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v20

    goto/16 :goto_11

    :pswitch_36
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v41

    goto/16 :goto_11

    :pswitch_37
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 128
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v9

    .line 129
    const-string v10, "type_num"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v82

    .line 130
    const-string v10, "precision_num"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v83

    .line 131
    const-string v10, "currency"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 132
    const-string v10, "value"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v84

    new-instance v60, Ll3/e1;

    move-object/from16 v81, v60

    .line 133
    invoke-direct/range {v81 .. v86}, Ll3/e1;-><init>(IIJLjava/lang/String;)V

    goto/16 :goto_9

    :pswitch_38
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 134
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v27

    goto/16 :goto_11

    :pswitch_39
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v45

    goto/16 :goto_11

    :pswitch_3a
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 136
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v17

    goto/16 :goto_11

    :pswitch_3b
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 137
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Pv;->a(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v16

    goto/16 :goto_11

    :pswitch_3c
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 138
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v29

    goto/16 :goto_11

    :pswitch_3d
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v54

    goto/16 :goto_11

    :pswitch_3e
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v72

    goto/16 :goto_11

    :pswitch_3f
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v50

    goto/16 :goto_11

    :pswitch_40
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 143
    const-string v10, "landscape"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5c

    const/16 v48, 0x6

    goto/16 :goto_9

    :cond_5c
    const-string v10, "portrait"

    .line 144
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5d

    const/16 v48, 0x7

    goto/16 :goto_9

    :cond_5d
    const/16 v48, -0x1

    goto/16 :goto_9

    :pswitch_41
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v46

    goto/16 :goto_11

    :pswitch_42
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 146
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v10

    goto/16 :goto_a

    :pswitch_43
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_11

    :pswitch_44
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v62

    goto/16 :goto_11

    :pswitch_45
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 149
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->l6:Lcom/google/android/gms/internal/ads/J7;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    sget-object v10, Ll3/q;->d:Ll3/q;

    iget-object v10, v10, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 151
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v9

    .line 152
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_9

    .line 154
    :cond_5e
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_d

    :pswitch_46
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v79

    goto/16 :goto_11

    :pswitch_47
    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    .line 156
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v9

    .line 157
    const-string v10, "enable_prewarming"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 158
    const-string v13, "prefetch_url"

    invoke-virtual {v9, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v1

    .line 159
    const-string v1, "skip_offline_notification_flow"

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v9, Lcom/google/android/gms/internal/ads/nc;

    invoke-direct {v9, v13, v10, v1}, Lcom/google/android/gms/internal/ads/nc;-><init>(Ljava/lang/String;ZZ)V

    move-object/from16 v59, v9

    :goto_12
    move-object/from16 v1, v21

    goto/16 :goto_9

    :pswitch_48
    move-object/from16 v21, v1

    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v11, 0x0

    move-object/from16 v12, p1

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v77

    :goto_13
    move-object/from16 v10, v22

    move-object/from16 v11, v23

    goto/16 :goto_10

    :pswitch_49
    move-object/from16 v21, v1

    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v11, 0x0

    move-object/from16 v12, p1

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v74

    goto :goto_13

    :pswitch_4a
    move-object/from16 v21, v1

    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v11, 0x0

    move-object/from16 v12, p1

    .line 162
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v28

    goto :goto_13

    :pswitch_4b
    move-object/from16 v21, v1

    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v11, 0x0

    move-object/from16 v12, p1

    .line 163
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v26

    goto :goto_13

    :pswitch_4c
    move-object/from16 v21, v1

    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    const/4 v11, 0x0

    move-object/from16 v12, p1

    .line 164
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->l6:Lcom/google/android/gms/internal/ads/J7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    sget-object v9, Ll3/q;->d:Ll3/q;

    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 166
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v1

    .line 167
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v66

    goto :goto_12

    .line 169
    :cond_5f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_12

    :cond_60
    move-object/from16 v88, v9

    move-object/from16 v23, v11

    move-object/from16 v89, v12

    move-object/from16 v90, v13

    move-object/from16 v12, p1

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Ov;->a:Ljava/util/List;

    iput v15, v0, Lcom/google/android/gms/internal/ads/Ov;->b:I

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/Ov;->c:Ljava/util/List;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Ov;->d:Ljava/util/List;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Ov;->f:Ljava/util/List;

    iput v14, v0, Lcom/google/android/gms/internal/ads/Ov;->e:I

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/Ov;->g:Ljava/util/List;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/Ov;->h:Ljava/util/List;

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/Ov;->i:Ljava/util/List;

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/Ov;->j:Ljava/lang/String;

    move-object/from16 v12, v89

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/Ov;->k:Ljava/lang/String;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/Ov;->l:Lcom/google/android/gms/internal/ads/ld;

    move-object/from16 v8, v88

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/Ov;->m:Ljava/util/List;

    move-object/from16 v9, v22

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/Ov;->n:Ljava/util/List;

    move-object/from16 v10, v20

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/Ov;->o:Ljava/util/List;

    move-object/from16 v11, v19

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/Ov;->p:Ljava/util/List;

    move/from16 v1, v33

    iput v1, v0, Lcom/google/android/gms/internal/ads/Ov;->q:I

    move-object/from16 v12, v18

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/Ov;->r:Ljava/util/List;

    move-object/from16 v9, v34

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/Ov;->s:Lcom/google/android/gms/internal/ads/Rv;

    move-object/from16 v13, v17

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/Ov;->t:Ljava/util/List;

    move-object/from16 v14, v16

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/Ov;->u:Ljava/util/List;

    move-object/from16 v1, v35

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->w:Ljava/lang/String;

    move-object/from16 v15, v25

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    move-object/from16 v1, v36

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->x:Ljava/lang/String;

    move-object/from16 v1, v37

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->y:Ljava/lang/String;

    move-object/from16 v1, v38

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->z:Ljava/lang/String;

    move-object/from16 v1, v39

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->A:Lcom/google/android/gms/internal/ads/Gd;

    move-object/from16 v1, v40

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->B:Ljava/lang/String;

    move-object/from16 v1, v26

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->C:Lorg/json/JSONObject;

    move-object/from16 v1, v27

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->D:Lorg/json/JSONObject;

    move/from16 v1, v41

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->J:Z

    move/from16 v1, v42

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->K:Z

    move/from16 v1, v43

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->L:Z

    move/from16 v1, v44

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->M:Z

    move/from16 v1, v45

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->N:Z

    move/from16 v1, v46

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->O:Z

    move/from16 v1, v47

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->P:Z

    move/from16 v1, v48

    iput v1, v0, Lcom/google/android/gms/internal/ads/Ov;->Q:I

    move/from16 v1, v49

    iput v1, v0, Lcom/google/android/gms/internal/ads/Ov;->R:I

    move/from16 v1, v50

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->T:Z

    move-object/from16 v1, v51

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->U:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/Xu;

    move-object/from16 v2, v28

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->V:Lcom/google/android/gms/internal/ads/Xu;

    move/from16 v1, v52

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->W:Z

    move/from16 v1, v53

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->X:Z

    move/from16 v1, v54

    iput v1, v0, Lcom/google/android/gms/internal/ads/Ov;->Y:I

    move-object/from16 v1, v55

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->Z:Ljava/lang/String;

    move/from16 v1, v56

    iput v1, v0, Lcom/google/android/gms/internal/ads/Ov;->a0:I

    move-object/from16 v1, v57

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->b0:Ljava/lang/String;

    move/from16 v1, v58

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->c0:Z

    move-object/from16 v9, v59

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/Ov;->d0:Lcom/google/android/gms/internal/ads/nc;

    move-object/from16 v1, v60

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->e0:Ll3/e1;

    move-object/from16 v1, v61

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->f0:Ljava/lang/String;

    move/from16 v1, v62

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->g0:Z

    move-object/from16 v1, v29

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->h0:Lorg/json/JSONObject;

    move-object/from16 v1, v63

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->E:Ljava/lang/String;

    move-object/from16 v1, v64

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->F:Ljava/lang/String;

    move-object/from16 v1, v65

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->G:Ljava/lang/String;

    move-object/from16 v1, v66

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->H:Ljava/lang/String;

    move-object/from16 v1, v67

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->I:Ljava/lang/String;

    move/from16 v1, v68

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->i0:Z

    move-object/from16 v1, v30

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->j0:Lorg/json/JSONObject;

    move/from16 v1, v69

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->k0:Z

    move-object/from16 v1, v70

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->l0:Ljava/lang/String;

    move/from16 v1, v71

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->m0:Z

    move/from16 v1, v72

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->S:Z

    move-object/from16 v1, v73

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->n0:Ljava/lang/String;

    move-object/from16 v1, v74

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->o0:Ljava/lang/String;

    move-object/from16 v1, v75

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->p0:Ljava/lang/String;

    move/from16 v1, v76

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->q0:Z

    move/from16 v1, v77

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->r0:Z

    move/from16 v1, v78

    iput v1, v0, Lcom/google/android/gms/internal/ads/Ov;->s0:I

    move-object/from16 v1, v31

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->u0:Ljava/util/AbstractCollection;

    move-object/from16 v1, v79

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->t0:Ljava/lang/String;

    move/from16 v1, v80

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ov;->v0:Z

    move-object/from16 v9, v32

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/Ov;->w0:Ljava/util/HashMap;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f724a93 -> :sswitch_4c
        -0x760d5f21 -> :sswitch_4b
        -0x752755d7 -> :sswitch_4a
        -0x6f8bb127 -> :sswitch_49
        -0x6ddc55fb -> :sswitch_48
        -0x6c01c604 -> :sswitch_47
        -0x6a655fd9 -> :sswitch_46
        -0x69ea0ded -> :sswitch_45
        -0x631f353f -> :sswitch_44
        -0x60966ac3 -> :sswitch_43
        -0x5c657e81 -> :sswitch_42
        -0x55d641b4 -> :sswitch_41
        -0x55cd0a30 -> :sswitch_40
        -0x552c574b -> :sswitch_3f
        -0x53d154ad -> :sswitch_3e
        -0x53abfab8 -> :sswitch_3d
        -0x51fb2365 -> :sswitch_3c
        -0x511c568a -> :sswitch_3b
        -0x4dd838fc -> :sswitch_3a
        -0x4daf44ce -> :sswitch_39
        -0x4cd5119d -> :sswitch_38
        -0x49ea2690 -> :sswitch_37
        -0x49901bd3 -> :sswitch_36
        -0x45a06900 -> :sswitch_35
        -0x44ada62a -> :sswitch_34
        -0x4456b89f -> :sswitch_33
        -0x428259e0 -> :sswitch_32
        -0x407d0b26 -> :sswitch_31
        -0x4041c09a -> :sswitch_30
        -0x3ea917c2 -> :sswitch_2f
        -0x3a916a9c -> :sswitch_2e
        -0x39f06783 -> :sswitch_2d
        -0x2e4deec5 -> :sswitch_2c
        -0x21fb0dbc -> :sswitch_2b
        -0x207016c7 -> :sswitch_2a
        -0x1a0cf689 -> :sswitch_29
        -0x181b2b46 -> :sswitch_28
        -0x18198873 -> :sswitch_27
        -0x17b47e0b -> :sswitch_26
        -0x172cbb57 -> :sswitch_25
        -0x160a4bb0 -> :sswitch_24
        -0xcb8faf4 -> :sswitch_23
        -0xcb8979c -> :sswitch_22
        -0xabddb62 -> :sswitch_21
        -0x93741cc -> :sswitch_20
        -0x1bfab86 -> :sswitch_1f
        0xc23 -> :sswitch_1e
        0xd1b -> :sswitch_1d
        0x2eefaa -> :sswitch_1c
        0x23640cb -> :sswitch_1b
        0x3c44b50 -> :sswitch_1a
        0x6674f9b -> :sswitch_19
        0xdba7381 -> :sswitch_18
        0x18f0294b -> :sswitch_17
        0x2052155c -> :sswitch_16
        0x20bbc660 -> :sswitch_15
        0x239cb9fc -> :sswitch_14
        0x2cfeab54 -> :sswitch_13
        0x2f2793b0 -> :sswitch_12
        0x2ffcc875 -> :sswitch_11
        0x3c3c4a1c -> :sswitch_10
        0x419a9724 -> :sswitch_f
        0x440b789c -> :sswitch_e
        0x46b1262d -> :sswitch_d
        0x4ec7dc6f -> :sswitch_c
        0x54c7ec75 -> :sswitch_b
        0x55aac6a3 -> :sswitch_a
        0x619b1543 -> :sswitch_9
        0x61b080e5 -> :sswitch_8
        0x6483313f -> :sswitch_7
        0x64a20a30 -> :sswitch_6
        0x6b3eec6e -> :sswitch_5
        0x6da6d810 -> :sswitch_4
        0x6fc8b8d3 -> :sswitch_3
        0x7b455927 -> :sswitch_2
        0x7b8dc4b3 -> :sswitch_1
        0x7bb5b70a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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

.method public static a(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "REWARDED_INTERSTITIAL"

    return-object p0

    :pswitch_1
    const-string p0, "APP_OPEN_AD"

    return-object p0

    :pswitch_2
    const-string p0, "REWARDED"

    return-object p0

    :pswitch_3
    const-string p0, "NATIVE"

    return-object p0

    :pswitch_4
    const-string p0, "NATIVE_EXPRESS"

    return-object p0

    :pswitch_5
    const-string p0, "INTERSTITIAL"

    return-object p0

    :pswitch_6
    const-string p0, "BANNER"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
