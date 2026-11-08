.class public final LB0/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:LB0/H0;


# instance fields
.field public final a:Lz4/L;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, LB0/G0;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x5

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-array v5, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    aput-object v3, v5, v6

    .line 21
    .line 22
    aput-object v4, v5, v1

    .line 23
    .line 24
    invoke-static {v0, v5}, Lz4/L;->q(I[Ljava/lang/Object;)Lz4/L;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, v2, LB0/G0;->a:Lz4/L;

    .line 29
    .line 30
    iput-boolean v1, v2, LB0/G0;->b:Z

    .line 31
    .line 32
    iput-boolean v1, v2, LB0/G0;->c:Z

    .line 33
    .line 34
    iput-boolean v1, v2, LB0/G0;->d:Z

    .line 35
    .line 36
    iput-boolean v1, v2, LB0/G0;->e:Z

    .line 37
    .line 38
    new-instance v0, LB0/H0;

    .line 39
    .line 40
    invoke-direct {v0, v2}, LB0/H0;-><init>(LB0/G0;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, LB0/H0;->f:LB0/H0;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(LB0/G0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LB0/G0;->a:Lz4/L;

    .line 5
    .line 6
    iput-object v0, p0, LB0/H0;->a:Lz4/L;

    .line 7
    .line 8
    iget-boolean v0, p1, LB0/G0;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, LB0/H0;->b:Z

    .line 11
    .line 12
    iget-boolean v0, p1, LB0/G0;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, LB0/H0;->c:Z

    .line 15
    .line 16
    iget-boolean v0, p1, LB0/G0;->d:Z

    .line 17
    .line 18
    iput-boolean v0, p0, LB0/H0;->d:Z

    .line 19
    .line 20
    iget-boolean p1, p1, LB0/G0;->e:Z

    .line 21
    .line 22
    iput-boolean p1, p0, LB0/H0;->e:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LB0/H0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, LB0/H0;

    .line 8
    .line 9
    iget-object v0, p1, LB0/H0;->a:Lz4/L;

    .line 10
    .line 11
    iget-object v2, p0, LB0/H0;->a:Lz4/L;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lz4/L;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, LB0/H0;->c:Z

    .line 20
    .line 21
    iget-boolean v2, p1, LB0/H0;->c:Z

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, LB0/H0;->b:Z

    .line 26
    .line 27
    iget-boolean v2, p1, LB0/H0;->b:Z

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, LB0/H0;->d:Z

    .line 32
    .line 33
    iget-boolean v2, p1, LB0/H0;->d:Z

    .line 34
    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    iget-boolean v0, p0, LB0/H0;->e:Z

    .line 38
    .line 39
    iget-boolean p1, p1, LB0/H0;->e:Z

    .line 40
    .line 41
    if-ne v0, p1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-boolean v0, p0, LB0/H0;->b:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, LB0/H0;->c:Z

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, LB0/H0;->d:Z

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v3, p0, LB0/H0;->e:Z

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, LB0/H0;->a:Lz4/L;

    .line 26
    .line 27
    const/4 v5, 0x7

    .line 28
    new-array v5, v5, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    aput-object v4, v5, v6

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v6, 0x1

    .line 35
    aput-object v4, v5, v6

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    aput-object v4, v5, v6

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    aput-object v0, v5, v4

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    aput-object v1, v5, v0

    .line 45
    .line 46
    const/4 v0, 0x5

    .line 47
    aput-object v2, v5, v0

    .line 48
    .line 49
    const/4 v0, 0x6

    .line 50
    aput-object v3, v5, v0

    .line 51
    .line 52
    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    return v0
.end method
