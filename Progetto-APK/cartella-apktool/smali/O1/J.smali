.class public final LO1/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO1/m0;
.implements Lcom/google/android/gms/internal/ads/gl;
.implements LZ3/W;
.implements Lorg/chromium/net/c;


# instance fields
.field public final synthetic G:I

.field public H:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, LO1/J;->G:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, LO1/J;->G:I

    iput-object p1, p0, LO1/J;->H:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/channels/FileChannel;
    .locals 6

    .line 1
    iget v0, p0, LO1/J;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LO1/J;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide/16 v4, -0x1

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Not a file: "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :pswitch_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 54
    .line 55
    check-cast v1, Ljava/io/File;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, LO1/J;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LO1/J;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LO1/M;

    .line 13
    .line 14
    check-cast v1, LO1/L;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, LO1/L;->A(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 21
    .line 22
    add-int/2addr p1, v0

    .line 23
    return p1

    .line 24
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, LO1/M;

    .line 29
    .line 30
    check-cast v1, LO1/L;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, LO1/L;->F(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 37
    .line 38
    add-int/2addr p1, v0

    .line 39
    return p1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/wj;)V
    .locals 1

    .line 1
    iget p3, p0, LO1/J;->G:I

    .line 2
    .line 3
    iget-object v0, p0, LO1/J;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p3, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/te;

    .line 9
    .line 10
    :try_start_0
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 11
    .line 12
    iget-object p1, p1, Lk3/l;->b:LF2/G;

    .line 13
    .line 14
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/GB;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 21
    .line 22
    const/4 p3, 0x1

    .line 23
    invoke-static {p2, p1, p3}, LF2/G;->M(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    return-void

    .line 27
    :pswitch_0
    check-cast v0, Lcom/google/android/gms/internal/ads/sq;

    .line 28
    .line 29
    :try_start_1
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Lcom/google/android/gms/internal/ads/gw;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/gw;->c(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lcom/google/android/gms/internal/ads/gw;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    :try_start_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/eb;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_3
    new-instance p2, Lcom/google/android/gms/internal/ads/aw;

    .line 51
    .line 52
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw p2
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_3 .. :try_end_3} :catch_1

    .line 56
    :catch_1
    move-exception p1

    .line 57
    const-string p2, "Cannot show rewarded video."

    .line 58
    .line 59
    invoke-static {p2, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/google/android/gms/internal/ads/fl;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :pswitch_1
    check-cast v0, Lcom/google/android/gms/internal/ads/sq;

    .line 73
    .line 74
    :try_start_4
    iget-object p3, v0, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p3, Lcom/google/android/gms/internal/ads/gw;

    .line 77
    .line 78
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/gw;->c(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lcom/google/android/gms/internal/ads/gw;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_4 .. :try_end_4} :catch_2

    .line 86
    .line 87
    .line 88
    :try_start_5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 89
    .line 90
    new-instance p3, LR3/b;

    .line 91
    .line 92
    invoke-direct {p3, p2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/eb;->B0(LR3/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    :try_start_6
    new-instance p2, Lcom/google/android/gms/internal/ads/aw;

    .line 101
    .line 102
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p2
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_6 .. :try_end_6} :catch_2

    .line 106
    :catch_2
    move-exception p1

    .line 107
    new-instance p2, Lcom/google/android/gms/internal/ads/fl;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw p2

    .line 117
    :pswitch_2
    check-cast v0, Lcom/google/android/gms/internal/ads/sq;

    .line 118
    .line 119
    :try_start_7
    iget-object p3, v0, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p3, Lcom/google/android/gms/internal/ads/gw;

    .line 122
    .line 123
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/gw;->c(Z)V

    .line 124
    .line 125
    .line 126
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p1, Lcom/google/android/gms/internal/ads/gw;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_7 .. :try_end_7} :catch_3

    .line 131
    .line 132
    .line 133
    :try_start_8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 134
    .line 135
    new-instance p3, LR3/b;

    .line 136
    .line 137
    invoke-direct {p3, p2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/eb;->H1(LR3/a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :catchall_2
    move-exception p1

    .line 145
    :try_start_9
    new-instance p2, Lcom/google/android/gms/internal/ads/aw;

    .line 146
    .line 147
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw p2
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_9 .. :try_end_9} :catch_3

    .line 151
    :catch_3
    move-exception p1

    .line 152
    new-instance p2, Lcom/google/android/gms/internal/ads/fl;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw p2

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, LO1/J;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LO1/J;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LO1/M;

    .line 13
    .line 14
    check-cast v1, LO1/L;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, LO1/L;->G(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    .line 22
    sub-int/2addr p1, v0

    .line 23
    return p1

    .line 24
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, LO1/M;

    .line 29
    .line 30
    check-cast v1, LO1/L;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, LO1/L;->C(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 37
    .line 38
    sub-int/2addr p1, v0

    .line 39
    return p1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LO1/J;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LO1/J;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    iget-object v0, p0, LO1/J;->H:Ljava/lang/Object;

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
