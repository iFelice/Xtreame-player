.class public final synthetic Lb7/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/PlayStreamEPGActivity;

.field public final synthetic I:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/PlayStreamEPGActivity;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/c1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/c1;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/c1;->I:Landroid/app/AlertDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lb7/c1;->G:I

    .line 2
    .line 3
    const-string v0, "VLC"

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    const-string v2, "EXO"

    .line 7
    .line 8
    const-string v3, "ORT_WHICH_PLAYER"

    .line 9
    .line 10
    iget-object v4, p0, Lb7/c1;->I:Landroid/app/AlertDialog;

    .line 11
    .line 12
    iget-object v5, p0, Lb7/c1;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p1, Lb7/h1;

    .line 23
    .line 24
    invoke-direct {p1, v5}, Lb7/h1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Void;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v3, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget-object p1, v5, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 57
    .line 58
    const-wide/16 v2, 0x1

    .line 59
    .line 60
    invoke-virtual {p1, v1, v2, v3}, Lm0/f;->j(IJ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->z()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v3, v2, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object p1, v5, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 74
    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setTime(J)J

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->z()V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_1
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1, v3, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    iget-object p1, v5, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 107
    .line 108
    iget v0, v5, Lpe/hf/black20/PlayStreamEPGActivity;->N1:I

    .line 109
    .line 110
    int-to-long v2, v0

    .line 111
    invoke-virtual {p1, v1, v2, v3}, Lm0/f;->j(IJ)V

    .line 112
    .line 113
    .line 114
    iget-object p1, v5, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 115
    .line 116
    iget v0, v5, Lpe/hf/black20/PlayStreamEPGActivity;->N1:I

    .line 117
    .line 118
    div-int/lit16 v0, v0, 0x3e8

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->z()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-static {v3, v2, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    iget-object p1, v5, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 134
    .line 135
    iget v0, v5, Lpe/hf/black20/PlayStreamEPGActivity;->N1:I

    .line 136
    .line 137
    int-to-long v0, v0

    .line 138
    invoke-virtual {p1, v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setTime(J)J

    .line 139
    .line 140
    .line 141
    iget-object p1, v5, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 142
    .line 143
    iget v0, v5, Lpe/hf/black20/PlayStreamEPGActivity;->N1:I

    .line 144
    .line 145
    div-int/lit16 v0, v0, 0x3e8

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->z()V

    .line 151
    .line 152
    .line 153
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
