.class public final LM4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public e:I

.field public f:I

.field public g:LM4/c;

.field public final h:Ljava/util/Set;


# direct methods
.method public constructor <init>(LM4/g;[LM4/g;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, LM4/a;->a:I

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, LM4/a;->b:Ljava/lang/String;

    .line 33
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, LM4/a;->c:Ljava/util/Set;

    .line 34
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, LM4/a;->d:Ljava/util/Set;

    .line 35
    iput v0, p0, LM4/a;->e:I

    .line 36
    iput v0, p0, LM4/a;->f:I

    .line 37
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, LM4/a;->h:Ljava/util/Set;

    .line 38
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 40
    const-string v2, "Null interface"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->h(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, LM4/a;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(LM4/g;[LM4/g;I)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    iput p3, p0, LM4/a;->a:I

    .line 2
    invoke-direct {p0, p1, p2}, LM4/a;-><init>(LM4/g;[LM4/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, LM4/a;->a:I

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, LM4/a;->b:Ljava/lang/String;

    .line 19
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, LM4/a;->c:Ljava/util/Set;

    .line 20
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, LM4/a;->d:Ljava/util/Set;

    .line 21
    iput v0, p0, LM4/a;->e:I

    .line 22
    iput v0, p0, LM4/a;->f:I

    .line 23
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, LM4/a;->h:Ljava/util/Set;

    .line 24
    new-instance v2, LM4/g;

    const-class v3, LM4/f;

    invoke-direct {v2, v3, p1}, LM4/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 27
    const-string v2, "Null interface"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v2, LM4/g;

    invoke-direct {v2, v3, v1}, LM4/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 29
    iget-object v1, p0, LM4/a;->c:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;I)V
    .locals 0

    .line 3
    const/4 p3, 0x0

    iput p3, p0, LM4/a;->a:I

    .line 4
    invoke-direct {p0, p1, p2}, LM4/a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;IILM4/c;Ljava/util/Set;)V
    .locals 11

    .line 5
    const/4 v0, 0x1

    move-object v10, p0

    iput v0, v10, LM4/a;->a:I

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 6
    invoke-direct/range {v1 .. v9}, LM4/a;-><init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;IILM4/c;Ljava/util/Set;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;IILM4/c;Ljava/util/Set;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p8, 0x1

    .line 8
    iput p8, p0, LM4/a;->a:I

    .line 9
    iput-object p1, p0, LM4/a;->b:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LM4/a;->c:Ljava/util/Set;

    .line 11
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LM4/a;->d:Ljava/util/Set;

    .line 12
    iput p4, p0, LM4/a;->e:I

    .line 13
    iput p5, p0, LM4/a;->f:I

    .line 14
    iput-object p6, p0, LM4/a;->g:LM4/c;

    .line 15
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LM4/a;->h:Ljava/util/Set;

    return-void
.end method

.method public static c(LM4/g;)LM4/a;
    .locals 3

    .line 1
    new-instance v0, LM4/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [LM4/g;

    .line 5
    .line 6
    invoke-direct {v0, p0, v2, v1}, LM4/a;-><init>(LM4/g;[LM4/g;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static d(Ljava/lang/Class;)LM4/a;
    .locals 3

    .line 1
    new-instance v0, LM4/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    invoke-direct {v0, p0, v2, v1}, LM4/a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(LM4/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, LM4/a;->c:Ljava/util/Set;

    .line 2
    .line 3
    iget-object v1, p1, LM4/d;->a:LM4/g;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, LM4/a;->d:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final b()LM4/a;
    .locals 9

    .line 1
    iget-object v0, p0, LM4/a;->g:LM4/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, LM4/a;

    .line 11
    .line 12
    iget-object v2, p0, LM4/a;->b:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v3, Ljava/util/HashSet;

    .line 15
    .line 16
    iget-object v1, p0, LM4/a;->c:Ljava/util/Set;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Ljava/util/HashSet;

    .line 22
    .line 23
    iget-object v1, p0, LM4/a;->d:Ljava/util/Set;

    .line 24
    .line 25
    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    iget v5, p0, LM4/a;->e:I

    .line 29
    .line 30
    iget v6, p0, LM4/a;->f:I

    .line 31
    .line 32
    iget-object v7, p0, LM4/a;->g:LM4/c;

    .line 33
    .line 34
    iget-object v8, p0, LM4/a;->h:Ljava/util/Set;

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    invoke-direct/range {v1 .. v8}, LM4/a;-><init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;IILM4/c;Ljava/util/Set;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v1, "Missing required property: factory."

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, LM4/a;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p0, LM4/a;->e:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Instantiation type has already been set."

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, LM4/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Component<"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, LM4/a;->c:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ">{"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, LM4/a;->e:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", type="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, LM4/a;->f:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", deps="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, LM4/a;->d:Ljava/util/Set;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, "}"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
