.class Lcom/ies_net/artemis/ArtemisVideoView$4;
.super Ljava/lang/Object;
.source "ArtemisVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 389
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "framework_err",
            "impl_err"
        }
    .end annotation

    .line 391
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1400(Lcom/ies_net/artemis/ArtemisVideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$202(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 393
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1, v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1202(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 394
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1500(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1500(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$700(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p1, 0xc8

    const-string p3, "android"

    const-string v1, "string"

    if-ne p2, p1, :cond_2

    .line 415
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "VideoView_error_text_invalid_progressive_playback"

    invoke-virtual {p1, p2, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "VideoView_error_text_unknown"

    invoke-virtual {p1, p2, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 422
    :goto_0
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v2}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1600(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "VideoView_error_title"

    invoke-virtual {v2, v3, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 425
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 426
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string v2, "VideoView_error_button"

    invoke-virtual {p2, v2, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/ies_net/artemis/ArtemisVideoView$4$1;

    invoke-direct {p3, p0}, Lcom/ies_net/artemis/ArtemisVideoView$4$1;-><init>(Lcom/ies_net/artemis/ArtemisVideoView$4;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 438
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return v0
.end method
