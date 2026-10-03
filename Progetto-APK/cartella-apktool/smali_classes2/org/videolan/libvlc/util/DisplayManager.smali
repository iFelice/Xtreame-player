.class public Lorg/videolan/libvlc/util/DisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;,
        Lorg/videolan/libvlc/util/DisplayManager$DisplayType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VLC/DisplayManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDisplayType:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

.field private mMediaRouter:Landroid/media/MediaRouter;

.field private mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

.field private mPresentationId:I

.field private mRendererItem:Lorg/videolan/libvlc/RendererItem;

.field private mRendererObs:Le0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/w;"
        }
    .end annotation
.end field

.field private mSelectedRenderer:Le0/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/t;"
        }
    .end annotation
.end field

.field private mTextureView:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Le0/t;ZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Le0/t;",
            "ZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentationId:I

    .line 6
    .line 7
    new-instance v0, Lorg/videolan/libvlc/util/DisplayManager$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/DisplayManager$1;-><init>(Lorg/videolan/libvlc/util/DisplayManager;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mRendererObs:Le0/w;

    .line 13
    .line 14
    new-instance v0, Lorg/videolan/libvlc/util/DisplayManager$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/DisplayManager$2;-><init>(Lorg/videolan/libvlc/util/DisplayManager;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 20
    .line 21
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mActivity:Landroid/app/Activity;

    .line 22
    .line 23
    iput-object p2, p0, Lorg/videolan/libvlc/util/DisplayManager;->mSelectedRenderer:Le0/t;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v2, 0x17

    .line 33
    .line 34
    if-lt v0, v2, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Ll/H;->i(Landroid/content/Context;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    if-lt v0, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Ll/H;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, LE/b;->a:Ljava/util/HashMap;

    .line 49
    .line 50
    const-class v2, Landroid/media/MediaRouter;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .line 58
    :goto_0
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object p1, v1

    .line 66
    :goto_1
    check-cast p1, Landroid/media/MediaRouter;

    .line 67
    .line 68
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 69
    .line 70
    iput-boolean p3, p0, Lorg/videolan/libvlc/util/DisplayManager;->mTextureView:Z

    .line 71
    .line 72
    if-nez p4, :cond_4

    .line 73
    .line 74
    if-nez p5, :cond_4

    .line 75
    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    iget-object p1, p2, Le0/t;->e:Ljava/lang/Object;

    .line 79
    .line 80
    sget-object p2, Le0/t;->k:Ljava/lang/Object;

    .line 81
    .line 82
    if-eq p1, p2, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move-object p1, v1

    .line 86
    :goto_2
    if-nez p1, :cond_4

    .line 87
    .line 88
    invoke-direct {p0}, Lorg/videolan/libvlc/util/DisplayManager;->createPresentation()Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    move-object p1, v1

    .line 94
    :goto_3
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 95
    .line 96
    iget-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mSelectedRenderer:Le0/t;

    .line 97
    .line 98
    if-eqz p1, :cond_9

    .line 99
    .line 100
    iget-object p1, p1, Le0/t;->e:Ljava/lang/Object;

    .line 101
    .line 102
    sget-object p2, Le0/t;->k:Ljava/lang/Object;

    .line 103
    .line 104
    if-eq p1, p2, :cond_5

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    move-object p1, v1

    .line 108
    :goto_4
    check-cast p1, Lorg/videolan/libvlc/RendererItem;

    .line 109
    .line 110
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mRendererItem:Lorg/videolan/libvlc/RendererItem;

    .line 111
    .line 112
    iget-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mSelectedRenderer:Le0/t;

    .line 113
    .line 114
    iget-object p2, p0, Lorg/videolan/libvlc/util/DisplayManager;->mRendererObs:Le0/w;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const-string p3, "observeForever"

    .line 120
    .line 121
    invoke-static {p3}, Le0/t;->a(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance p3, Le0/r;

    .line 125
    .line 126
    invoke-direct {p3, p1, p2}, Le0/s;-><init>(Le0/t;Le0/w;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Le0/t;->b:Ln/g;

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ln/g;->b(Ljava/lang/Object;)Ln/c;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    const/4 v0, 0x1

    .line 136
    if-eqz p4, :cond_6

    .line 137
    .line 138
    iget-object v1, p4, Ln/c;->H:Ljava/lang/Object;

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    new-instance p4, Ln/c;

    .line 142
    .line 143
    invoke-direct {p4, p2, p3}, Ln/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget p2, p1, Ln/g;->J:I

    .line 147
    .line 148
    add-int/2addr p2, v0

    .line 149
    iput p2, p1, Ln/g;->J:I

    .line 150
    .line 151
    iget-object p2, p1, Ln/g;->H:Ln/c;

    .line 152
    .line 153
    if-nez p2, :cond_7

    .line 154
    .line 155
    iput-object p4, p1, Ln/g;->G:Ln/c;

    .line 156
    .line 157
    iput-object p4, p1, Ln/g;->H:Ln/c;

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_7
    iput-object p4, p2, Ln/c;->I:Ln/c;

    .line 161
    .line 162
    iput-object p2, p4, Ln/c;->J:Ln/c;

    .line 163
    .line 164
    iput-object p4, p1, Ln/g;->H:Ln/c;

    .line 165
    .line 166
    :goto_5
    check-cast v1, Le0/s;

    .line 167
    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_8
    invoke-virtual {p3, v0}, Le0/s;->a(Z)V

    .line 172
    .line 173
    .line 174
    :cond_9
    :goto_6
    if-eqz p5, :cond_a

    .line 175
    .line 176
    sget-object p1, Lorg/videolan/libvlc/util/DisplayManager$DisplayType;->PRIMARY:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_a
    invoke-direct {p0}, Lorg/videolan/libvlc/util/DisplayManager;->getCurrentType()Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_7
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mDisplayType:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 184
    .line 185
    return-void
.end method

.method public static synthetic access$000(Lorg/videolan/libvlc/util/DisplayManager;)Lorg/videolan/libvlc/RendererItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mRendererItem:Lorg/videolan/libvlc/RendererItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lorg/videolan/libvlc/util/DisplayManager;Lorg/videolan/libvlc/RendererItem;)Lorg/videolan/libvlc/RendererItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mRendererItem:Lorg/videolan/libvlc/RendererItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lorg/videolan/libvlc/util/DisplayManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/util/DisplayManager;->updateDisplayType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lorg/videolan/libvlc/util/DisplayManager;)Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lorg/videolan/libvlc/util/DisplayManager;Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;)Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lorg/videolan/libvlc/util/DisplayManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentationId:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$302(Lorg/videolan/libvlc/util/DisplayManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentationId:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$400(Lorg/videolan/libvlc/util/DisplayManager;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lorg/videolan/libvlc/util/DisplayManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/util/DisplayManager;->removePresentation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createPresentation()Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    new-instance v2, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 23
    .line 24
    iget-object v3, p0, Lorg/videolan/libvlc/util/DisplayManager;->mActivity:Landroid/app/Activity;

    .line 25
    .line 26
    invoke-direct {v2, p0, v3, v0}, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;-><init>(Lorg/videolan/libvlc/util/DisplayManager;Landroid/content/Context;Landroid/view/Display;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lorg/videolan/libvlc/util/DisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentationId:I
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    return-object v2

    .line 44
    :catch_0
    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentationId:I

    .line 46
    .line 47
    :cond_2
    return-object v1
.end method

.method private getCurrentType()Lorg/videolan/libvlc/util/DisplayManager$DisplayType;
    .locals 2

    .line 1
    iget v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentationId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/videolan/libvlc/util/DisplayManager$DisplayType;->PRESENTATION:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mRendererItem:Lorg/videolan/libvlc/RendererItem;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lorg/videolan/libvlc/util/DisplayManager$DisplayType;->RENDERER:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    sget-object v0, Lorg/videolan/libvlc/util/DisplayManager$DisplayType;->PRIMARY:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 17
    .line 18
    return-object v0
.end method

.method private removePresentation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 15
    .line 16
    :cond_1
    invoke-direct {p0}, Lorg/videolan/libvlc/util/DisplayManager;->updateDisplayType()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private updateDisplayType()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mDisplayType:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/videolan/libvlc/util/DisplayManager;->getCurrentType()Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lorg/videolan/libvlc/util/DisplayManager$3;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lorg/videolan/libvlc/util/DisplayManager$3;-><init>(Lorg/videolan/libvlc/util/DisplayManager;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0x64

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getDisplayType()Lorg/videolan/libvlc/util/DisplayManager$DisplayType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mDisplayType:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPresentation()Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 2
    .line 3
    return-object v0
.end method

.method public isOnRenderer()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mDisplayType:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 2
    .line 3
    sget-object v1, Lorg/videolan/libvlc/util/DisplayManager$DisplayType;->RENDERER:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isPrimary()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mDisplayType:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 2
    .line 3
    sget-object v1, Lorg/videolan/libvlc/util/DisplayManager$DisplayType;->PRIMARY:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isSecondary()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mDisplayType:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 2
    .line 3
    sget-object v1, Lorg/videolan/libvlc/util/DisplayManager$DisplayType;->PRESENTATION:Lorg/videolan/libvlc/util/DisplayManager$DisplayType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mPresentation:Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mSelectedRenderer:Le0/t;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mRendererObs:Le0/w;

    .line 16
    .line 17
    const-string v2, "removeObserver"

    .line 18
    .line 19
    invoke-static {v2}, Le0/t;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Le0/t;->b:Ln/g;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ln/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Le0/s;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Le0/s;->a(Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public removeMediaRouterCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 12
    .line 13
    return-void
.end method

.method public setMediaRouterCallback()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lorg/videolan/libvlc/util/DisplayManager$4;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/DisplayManager$4;-><init>(Lorg/videolan/libvlc/util/DisplayManager;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/videolan/libvlc/util/DisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method
