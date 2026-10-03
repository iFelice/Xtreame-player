.class public final LP1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LT1/e;

.field public final d:Le0/u;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:I

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Landroid/content/Intent;

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Set;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LT1/e;Le0/u;Ljava/util/ArrayList;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "migrationContainer"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "journalMode"

    .line 12
    .line 13
    invoke-static {p7, v0}, Lt/a;->f(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "typeConverters"

    .line 17
    .line 18
    invoke-static {p13, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "autoMigrationSpecs"

    .line 22
    .line 23
    invoke-static {p14, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, LP1/c;->a:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p2, p0, LP1/c;->b:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p3, p0, LP1/c;->c:LT1/e;

    .line 34
    .line 35
    iput-object p4, p0, LP1/c;->d:Le0/u;

    .line 36
    .line 37
    iput-object p5, p0, LP1/c;->e:Ljava/util/List;

    .line 38
    .line 39
    iput-boolean p6, p0, LP1/c;->f:Z

    .line 40
    .line 41
    iput p7, p0, LP1/c;->g:I

    .line 42
    .line 43
    iput-object p8, p0, LP1/c;->h:Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    iput-object p9, p0, LP1/c;->i:Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, LP1/c;->j:Landroid/content/Intent;

    .line 49
    .line 50
    iput-boolean p10, p0, LP1/c;->k:Z

    .line 51
    .line 52
    iput-boolean p11, p0, LP1/c;->l:Z

    .line 53
    .line 54
    iput-object p12, p0, LP1/c;->m:Ljava/util/Set;

    .line 55
    .line 56
    iput-object p13, p0, LP1/c;->n:Ljava/util/List;

    .line 57
    .line 58
    iput-object p14, p0, LP1/c;->o:Ljava/util/List;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-le p1, p2, :cond_0

    .line 3
    .line 4
    iget-boolean p2, p0, LP1/c;->l:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-boolean p2, p0, LP1/c;->k:Z

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-object p2, p0, LP1/c;->m:Ljava/util/Set;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    :cond_2
    return v0
.end method
