.class Lcom/ies_net/artemis/ArtemisVideoView$2;
.super Ljava/lang/Object;
.source "ArtemisVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ies_net/artemis/ArtemisVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisVideoView;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$202(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 315
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$502(Lcom/ies_net/artemis/ArtemisVideoView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/ies_net/artemis/ArtemisVideoView;->access$402(Lcom/ies_net/artemis/ArtemisVideoView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/ies_net/artemis/ArtemisVideoView;->access$302(Lcom/ies_net/artemis/ArtemisVideoView;Z)Z

    .line 331
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$600(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$600(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v2}, Lcom/ies_net/artemis/ArtemisVideoView;->access$700(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/ies_net/artemis/ArtemisVideoView;->access$002(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 338
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$102(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 340
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$900(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {v0, p1}, Lcom/ies_net/artemis/ArtemisVideoView;->seekTo(I)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$000(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$100(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v3, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v3}, Lcom/ies_net/artemis/ArtemisVideoView;->access$000(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v4}, Lcom/ies_net/artemis/ArtemisVideoView;->access$100(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 347
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1000(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v0

    iget-object v3, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v3}, Lcom/ies_net/artemis/ArtemisVideoView;->access$000(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v3

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1100(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v0

    iget-object v3, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v3}, Lcom/ies_net/artemis/ArtemisVideoView;->access$100(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 351
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1200(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 352
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->start()V

    .line 353
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 354
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    .line 357
    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_6

    .line 358
    :cond_4
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 360
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 367
    :cond_5
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1200(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 368
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$2;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->start()V

    :cond_6
    :goto_0
    return-void
.end method
