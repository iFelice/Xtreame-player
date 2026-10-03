.class public final LC2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field public final G:Landroid/content/res/Resources$Theme;

.field public final H:Landroid/content/res/Resources;

.field public final I:LC2/o;

.field public final J:I

.field public K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;LC2/o;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC2/n;->G:Landroid/content/res/Resources$Theme;

    .line 5
    .line 6
    iput-object p2, p0, LC2/n;->H:Landroid/content/res/Resources;

    .line 7
    .line 8
    iput-object p3, p0, LC2/n;->I:LC2/o;

    .line 9
    .line 10
    iput p4, p0, LC2/n;->J:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, LC2/n;->I:LC2/o;

    .line 2
    .line 3
    check-cast v0, LC2/m;

    .line 4
    .line 5
    iget v0, v0, LC2/m;->a:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-class v0, Ljava/io/InputStream;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_1
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    .line 17
    .line 18
    :goto_0
    return-object v0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, LC2/n;->K:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, LC2/n;->I:LC2/o;

    .line 6
    .line 7
    check-cast v1, LC2/m;

    .line 8
    .line 9
    iget v1, v1, LC2/m;->a:I

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v0, Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_1
    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :cond_0
    :goto_0
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lw2/a;
    .locals 1

    .line 1
    sget-object v0, Lw2/a;->G:Lw2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, LC2/n;->I:LC2/o;

    .line 2
    .line 3
    iget-object v0, p0, LC2/n;->G:Landroid/content/res/Resources$Theme;

    .line 4
    .line 5
    iget-object v1, p0, LC2/n;->H:Landroid/content/res/Resources;

    .line 6
    .line 7
    iget v2, p0, LC2/n;->J:I

    .line 8
    .line 9
    check-cast p1, LC2/m;

    .line 10
    .line 11
    iget v3, p1, LC2/m;->a:I

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :pswitch_0
    iget-object p1, p1, LC2/m;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1, p1, v2, v0}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    iput-object p1, p0, LC2/n;->K:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->b(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
