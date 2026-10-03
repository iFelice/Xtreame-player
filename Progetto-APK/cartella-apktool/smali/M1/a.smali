.class public final LM1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV4/D;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Lm/a;LD0/U;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LM1/a;->b:Z

    .line 6
    .line 7
    iput-object p2, p0, LM1/a;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, LM1/a;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, LM1/a;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "dexopt/baseline.profm"

    .line 14
    .line 15
    iput-object p1, p0, LM1/a;->j:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p5, p0, LM1/a;->h:Ljava/lang/Object;

    .line 18
    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 p2, 0x18

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    if-ge p1, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 p2, 0x1f

    .line 28
    .line 29
    if-lt p1, p2, :cond_1

    .line 30
    .line 31
    sget-object p3, LM1/d;->c:[B

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_0
    sget-object p3, LM1/d;->d:[B

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_1
    sget-object p3, LM1/d;->e:[B

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_2
    sget-object p3, LM1/d;->f:[B

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_3
    sget-object p3, LM1/d;->g:[B

    .line 48
    .line 49
    :goto_0
    iput-object p3, p0, LM1/a;->f:Ljava/lang/Object;

    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p2, "compressed"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, LM1/a;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, LM1/c;

    .line 28
    .line 29
    invoke-interface {p1}, LM1/c;->o()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    return-object p1
.end method

.method public final b(ILjava/io/Serializable;)V
    .locals 3

    .line 1
    iget-object v0, p0, LM1/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lp0/t;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Lp0/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, LM1/a;->j:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method
