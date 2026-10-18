.class public final synthetic LO5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LO5/i;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LO5/i;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget p2, p0, LO5/i;->G:I

    .line 2
    .line 3
    iget-object v0, p0, LO5/i;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Lpe/hf/black20/SplashActivity;

    .line 9
    .line 10
    sget p2, Lpe/hf/black20/SplashActivity;->B0:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast v0, Lb7/t;

    .line 23
    .line 24
    sget p2, Lb7/t;->f:I

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p2, Lc7/d;

    .line 30
    .line 31
    iget-object v1, v0, Lb7/t;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {p2, v1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "ORT_PROFILE_ID"

    .line 42
    .line 43
    const-string v3, ""

    .line 44
    .line 45
    const-string v4, "-"

    .line 46
    .line 47
    invoke-static {v2, v3, v1, v4}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v5, v0, Lb7/t;->e:Ljava/util/HashMap;

    .line 51
    .line 52
    const-string v6, "id"

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2, v1}, Lc7/d;->C0(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Lc7/b;

    .line 71
    .line 72
    iget-object v1, v0, Lb7/t;->b:Landroid/content/Context;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-direct {p2, v1, v5}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3, v1, v4}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, v0, Lb7/t;->e:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :try_start_0
    const-string v1, "episode"

    .line 106
    .line 107
    const-string v2, "episode_stream_id = ?"

    .line 108
    .line 109
    filled-new-array {v0}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 117
    .line 118
    .line 119
    sget-object p2, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :pswitch_1
    check-cast v0, LO5/k;

    .line 134
    .line 135
    iget-object p1, v0, LO5/k;->a:Landroid/app/Activity;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 138
    .line 139
    .line 140
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
