.class public final synthetic Lpe/hf/black20/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/n;
.implements Lr2/m;


# instance fields
.field public final synthetic a:Ll/x;


# direct methods
.method public synthetic constructor <init>(Ll/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpe/hf/black20/util/c;->a:Ll/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lpe/hf/black20/util/c;->a:Ll/x;

    .line 4
    .line 5
    iget-object v1, v0, Ll/x;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lpe/hf/black20/util/d;

    .line 8
    .line 9
    iget-object v0, v0, Ll/x;->G:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v1, p1, v0}, Lpe/hf/black20/util/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Lr2/o;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/util/c;->a:Ll/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "XCIPTV_TAG"

    .line 7
    .line 8
    const-string v2, "VolleyGETStringRequest - response"

    .line 9
    .line 10
    :try_start_0
    iget-object v3, p1, Lr2/o;->G:Lr2/i;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget p1, v3, Lr2/i;->a:I

    .line 15
    .line 16
    new-instance v4, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, v3, Lr2/i;->b:[B

    .line 19
    .line 20
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iput-object v4, v0, Ll/x;->K:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v2, v0, Ll/x;->I:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lpe/hf/black20/util/d;

    .line 35
    .line 36
    const-string v3, "failed"

    .line 37
    .line 38
    iget-object v0, v0, Ll/x;->G:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v2, p1, v3, v0}, Lpe/hf/black20/util/d;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v2, "VolleyGETStringRequest -- success"

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v2, v0, Ll/x;->I:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lpe/hf/black20/util/d;

    .line 60
    .line 61
    iget-object v0, v0, Ll/x;->G:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Ljava/lang/String;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-interface {v2, v3, p1, v0}, Lpe/hf/black20/util/d;->b(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "VolleyGETStringRequest -- Error"

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void
.end method
